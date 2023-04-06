using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess
{
    public class Dal_Branchs : DalMain
    {
        public static DataTable GetAllZones()
        {
            DataTable dt = ExecuteDataTable(CommandType.Text, "SELECT Code ,Name FROM Zones", null);
            if (dt != null && dt.Rows.Count > 0)
                return dt;
            return null;
        }
    }
}
