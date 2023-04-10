using Common;
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
        public static int Add(cmnBranch cmn)
        {
            return DalMain.Add(cmn);
        }

        public static DataTable GetAllZones()
        {
            DataTable dt = ExecuteDataTable(CommandType.Text, "SELECT Code ,Name FROM Zones", null);
            if (dt != null && dt.Rows.Count > 0)
                return dt;
            return null;
        }

        public static DataTable GetAllBranchs()
        {
            DataTable dt = ExecuteDataTable(CommandType.Text, "SELECT Id,Code,Name,Tel,Address,CityName FROM Branchs", null);
            if (dt != null && dt.Rows.Count > 0)
                return dt;
            return null;
        }
    }
}
