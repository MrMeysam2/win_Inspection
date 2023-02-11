using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common
{
    public class cmnUsers : cmnMain
    {
        public cmnUsers()
        {
            TableName = "Users";
        }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string PersonnelCode { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public bool? IsActive { get; set; }
        public string NationalCode { get; set; }
        public int? BranchId { get; set; }
    }
}
