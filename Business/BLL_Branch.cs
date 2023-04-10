using Common;
using DataAccess;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business
{
    public class Bll_Branch
    {
        public static int Add(cmnBranch cmn)
        {
            return Dal_Branchs.Add(cmn);
        }
        public static DataTable GetAllZones()
        {
            return Dal_Branchs.GetAllZones();
        }

        public static DataTable GetAllBranchs()
        {
            return Dal_Branchs.GetAllBranchs();
        }
    }
}
