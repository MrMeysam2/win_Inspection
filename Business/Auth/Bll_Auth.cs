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
    public class Bll_Auth
    {
        Dal_Auth dal = new Dal_Auth(); 
        public static int Add(cmnUsers cmn)
        {
            return Dal_Auth.Add(cmn);  
        }

        public static cmnUsers CheckLogin(cmnUsers cmn)
        {
            return Dal_Auth.CheckLogin(cmn);
        }
    }
}
