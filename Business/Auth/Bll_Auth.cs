using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccess.Auth;

namespace Business.Auth
{
    public class Bll_Auth
    {
        Dal_Auth dal = new Dal_Auth(); 
        public bool Register(string username,string password)
        {
            return dal.Register(username, password);
        }
    }
}
