using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Auth
{
    public class Dal_Auth
    {
        public bool Register(string username, string password)
        {
            string connectionString = "Data Source=.;Initial Catalog=Northwind;Integrated Security=SSPI";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                    SqlCommand cmd = new SqlCommand("", connection);
                connection.Close();
                
            }
            
            return true;
        }
    }
}
