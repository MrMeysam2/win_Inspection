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
        Dal_Users dal = new Dal_Users(); 
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
    }
}
