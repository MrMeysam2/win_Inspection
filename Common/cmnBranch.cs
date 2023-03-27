using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common
{
    public class cmnBranch : cmnMain
    {
        public cmnBranch()
        {
            TableName = "Branch";
        }
        public int Code { get; set; }
        public string Name { get; set; }
        public string Tel { get; set; }
        public string Address { get; set; }
        public string CityName { get; set; }
        public bool IsActive { get; set; }
    }
}
