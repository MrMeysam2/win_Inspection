using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common
{
    [Serializable]
    public class cmnMain
    {
        string _TableName;
        public string TableName
        {
            get { return _TableName; }
            set { _TableName = value; }
        }

        public int ID { get; set; }

    }
}
