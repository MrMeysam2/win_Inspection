using Common;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess
{
    public class DalMain
    {
        public static string ConnectionString
        {
            get
            {
                return ConfigurationSettings.AppSettings["ConStr"].ToString();
            }
        }
        protected static int ExecuteNoneQuery(CommandType commandType, string commandText, SqlParameter[] commandParameters)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandTimeout = 0;
                    cmd.Connection = con;
                    cmd.CommandType = commandType;
                    cmd.CommandText = commandText;
                    if (commandParameters != null)
                        cmd.Parameters.AddRange(commandParameters);
                    con.Open();
                    int retVal = cmd.ExecuteNonQuery();
                    con.Close();
                    return retVal;
                }
            }
            catch
            {
                return 0;
            }
        }

        public static DataTable ExecuteDataTable(CommandType commandType, string commandText, SqlParameter[] commandParameters)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandTimeout = 0;
                    cmd.Connection = con;
                    cmd.CommandType = commandType;
                    cmd.CommandText = commandText;
                    if (commandParameters != null)
                        cmd.Parameters.AddRange(commandParameters);
                    DataTable dt = new DataTable();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    con.Open();
                    da.Fill(dt);
                    con.Close();

                    return dt;
                }
            }
            catch
            {
                DataTable dt = new DataTable();
                return dt;
            }
        }

        public static object ExecuteScaler(CommandType commandType, string commandText, params SqlParameter[] commandParameters)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandTimeout = 0;
                    cmd.Connection = con;
                    cmd.CommandType = commandType;
                    cmd.CommandText = commandText;
                    if (commandParameters != null)
                        cmd.Parameters.AddRange(commandParameters);
                    con.Open();
                    object obj = cmd.ExecuteScalar();
                    con.Close();
                    return obj;
                }
            }
            catch
            {
                return null;

            }
        }

        public static SqlDataReader ExecuteReader(CommandType commandType, string commandText, SqlParameter[] commandParameters)
        {
            SqlConnection con = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandTimeout = 0;
            cmd.Connection = con;
            cmd.CommandType = commandType;
            cmd.CommandText = commandText;
            if (commandParameters != null)
                cmd.Parameters.AddRange(commandParameters);
            bool mustCloseConnection = false;
            try
            {
                if (con.State != ConnectionState.Open)
                {
                    mustCloseConnection = true;
                    con.Open();
                }
                else
                {
                    mustCloseConnection = false;
                }
                SqlDataReader dataReader;
                dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
                return dataReader;
            }
            catch
            {
                if (mustCloseConnection)
                    con.Close();
                throw;
                throw;
            }
        }



        public static int Add(cmnMain cmn)
        {

            string query = "insert into " + cmn.TableName + " ({0})  values ({1})";
            string tmpParamquery = "";
            string tmpFieldquery = "";
            Type cmnType = cmn.GetType();
            PropertyInfo[] arrPI = cmnType.GetProperties();
            SqlParameter[] arparameter = new SqlParameter[arrPI.Length];

            int i = 0;
            foreach (PropertyInfo PI in arrPI)
            {
                SqlParameter sqlparam = new SqlParameter();
                if (string.Compare(PI.Name, "id", true) == 0 || string.Compare(PI.Name, "tablename", true) == 0 ||
                    string.Compare(PI.Name, "StateName", true) == 0 || string.Compare(PI.Name, "CityName", true) == 0 ||
                     string.Compare(PI.Name, "NeighborhoodName", true) == 0
                   || string.Compare(PI.Name, "Location", true) == 0 || string.Compare(PI.Name, "Code", true) == 0)
                    continue;
                if (PI.GetValue(cmn, new object[] { }) == null || PI.GetValue(cmn, new object[] { }).ToString().Length == 0)
                {

                    sqlparam = new SqlParameter(PI.Name, DBNull.Value);
                }
                else
                {
                    sqlparam = new SqlParameter(PI.Name, PI.GetValue(cmn, new object[] { }));
                }
                tmpFieldquery += "[" + PI.Name + "],";
                tmpParamquery += "@" + PI.Name + ",";
                arparameter[i++] = sqlparam;
            }
            query = string.Format(query, tmpFieldquery.Remove(tmpFieldquery.Length - 1, 1), tmpParamquery.Remove(tmpParamquery.Length - 1, 1));
            query += " SELECT SCOPE_IDENTITY() ";
            arparameter = arparameter.Where(parameter => parameter != null).ToArray();
            int res = Convert.ToInt32(ExecuteScaler(CommandType.Text, query, arparameter));
            return res;

        }

        protected static int Edit(cmnMain cmn)
        {

            int length = 0;
            string query = " Update " + cmn.TableName + " set {0} where id = @id ";// insert into " + cmn.TableName + " ({0})  values ({1})";
            string tmpSet = "";
            //string id = "";
            Type cmnType = cmn.GetType();
            PropertyInfo[] arrPI = cmnType.GetProperties();


            length = arrPI.Length - 1;
            SqlParameter[] arparameter = new SqlParameter[length];
            SqlParameter[] param = null;
            int i = 0;
            SqlParameter sqlparam = new SqlParameter();

            foreach (PropertyInfo PI in arrPI)
            {

                if (string.Compare(PI.Name, "id", true) == 0)
                {
                    sqlparam = new SqlParameter(PI.Name, PI.GetValue(cmn, new object[] { }));
                }
                if (string.Compare(PI.Name, "tablename", true) == 0)
                    continue;
                if (PI.GetValue(cmn, new object[] { }) == null || PI.GetValue(cmn, new object[] { }).ToString().Length == 0)
                {
                    length = length - 1;
                    continue;
                    //sqlparam = new SqlParameter(PI.Name, DBNull.Value);
                }
                else
                {
                    sqlparam = new SqlParameter(PI.Name, PI.GetValue(cmn, new object[] { }));
                }
                if (string.Compare(PI.Name, "id", true) != 0)
                {
                    tmpSet += "[" + PI.Name + "]= @" + PI.Name + " , ";
                }
                arparameter[i++] = sqlparam;
            }
            arparameter = arparameter.Where(parameter => parameter != null).ToArray();
            //param = new SqlParameter[length + 1];
            //for (int j = 0; j < length ; j++)
            //{
            //    if (arparameter[j].GetType() != null)
            //    {
            //        param[j] = arparameter[j];
            //    }
            //}
            //arparameter.CopyTo(param, 0);
            query = string.Format(query, tmpSet.Remove(tmpSet.Length - 2, 1));
            return ExecuteNoneQuery(CommandType.Text, query, arparameter);
        }

        protected static int Remove(int id, string TableName)
        {
            string query = string.Format("Delete from " + TableName + " where id=@ID");
            return ExecuteNoneQuery(CommandType.Text, query, new SqlParameter[] {
                new SqlParameter("@ID",id)
            });

        }

        public static void VisitSite()
        {
            ExecuteNoneQuery(CommandType.StoredProcedure, "visitsite", null);
        }

        public static void SiteState(out int Today, out int ThisMonth, out int ThisYear, out int AllVisited, out int Yesterday)
        {

            SqlParameter paramToday = new SqlParameter("@Today", SqlDbType.Int);
            paramToday.Direction = ParameterDirection.Output;


            SqlParameter paramThisMonth = new SqlParameter("@ThisMonth", SqlDbType.Int);
            paramThisMonth.Direction = ParameterDirection.Output;

            SqlParameter paramThisYear = new SqlParameter("@ThisYear", SqlDbType.Int);
            paramThisYear.Direction = ParameterDirection.Output;


            SqlParameter paramAllVisited = new SqlParameter("@AllVisit", SqlDbType.Int);
            paramAllVisited.Direction = ParameterDirection.Output;

            SqlParameter paramYesterday = new SqlParameter("@Yesterday", SqlDbType.Int);
            paramYesterday.Direction = ParameterDirection.Output;

            ExecuteScaler(CommandType.StoredProcedure, "GetAmar", paramToday, paramThisMonth, paramThisYear, paramAllVisited, paramYesterday);

            if (paramToday.Value != DBNull.Value)
                Today = Convert.ToInt32(paramToday.Value);
            else
                Today = 0;
            if (paramThisMonth.Value != DBNull.Value)
                ThisMonth = Convert.ToInt32(paramThisMonth.Value);
            else
                ThisMonth = 0;

            if (paramThisYear.Value != DBNull.Value)
                ThisYear = Convert.ToInt32(paramThisYear.Value);
            else
                ThisYear = 0;

            if (paramAllVisited.Value != DBNull.Value)
                AllVisited = Convert.ToInt32(paramAllVisited.Value);
            else
                AllVisited = 0;

            if (paramYesterday.Value != DBNull.Value)
                Yesterday = Convert.ToInt32(paramYesterday.Value);
            else
                Yesterday = 0;
        }
    }
}
