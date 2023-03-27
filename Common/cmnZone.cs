using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common 
{
    public class cmnZone : cmnMain
    {
        public cmnZone()
        {
            TableName = "Zone";
        }
        public int Code { get; set; }
        public string Name { get; set; }
    }
}
