using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Common;
using DataAccess.Auth;

namespace Business.Auth
{
    public class Bll_Users
    {
        public static int Add(cmnUsers cmn)
        {
            return Dal_Users.Add(cmn);  
        }

        public static cmnUsers CheckLogin(cmnUsers cmn)
        {
            return Dal_Users.CheckLogin(cmn);
        }

        public static DataTable FillcomboBranch()
        {
            return Dal_Users.FillcomboBranch();
        }

        public static DataTable GetAll()
        {
            return Dal_Users.GetAll();
        }
    }
}
