using Common;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace DataAccess.Auth
{
    public class Dal_Users : DalMain
    {
        public static int Add(cmnUsers cmn)
        {
            return DalMain.Add(cmn);
        }

        public static cmnUsers CheckLogin(cmnUsers cmn)
        {
            string query = "select * from users where username=@username and password=@password and isactive=1";
            Common.cmnUsers userinfo = null;
            DataTable dtreader = ExecuteDataTable(System.Data.CommandType.Text, query, new SqlParameter[]{
                new SqlParameter("@username",cmn.Username),
                new SqlParameter("@password",cmn.Password)
            });

            if (dtreader != null && dtreader.Rows.Count > 0)
            {
                userinfo = new cmnUsers();
                userinfo.ID = Convert.ToInt32(dtreader.Rows[0]["Id"].ToString());
                userinfo.Username = dtreader.Rows[0]["Username"].ToString();
                userinfo.FirstName = dtreader.Rows[0]["FirstName"].ToString();
                userinfo.LastName = dtreader.Rows[0]["LastName"].ToString();
                userinfo.IsActive = Convert.ToBoolean(dtreader.Rows[0]["IsActive"].ToString());
                //System.Web.HttpContext.Current.Session["CurrentUsesrID"] = userinfo.ID;
                //System.Web.HttpContext.Current.Session["CurrentUsesrRoleID"] = userinfo.RoleId;
            }
            return userinfo;
        }

        public static DataTable GetAll()
        {
            DataTable dt = ExecuteDataTable(CommandType.Text, "SELECT Id,FirstName,LastName,PersonnelCode,Username,NationalCode FROM Users", null);
            if (dt != null && dt.Rows.Count > 0)
                return dt;
            return null;
        }

        public static DataTable FillcomboBranch()
        {
            DataTable dt = ExecuteDataTable(CommandType.Text, "SELECT Code,Name  FROM Branchs", null);
            if (dt != null)
                return dt;
            return null;
        }
    }
}
