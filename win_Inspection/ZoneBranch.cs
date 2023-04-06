using Business;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace win_Inspection.FormAuth
{
    public partial class frmZoneBranch : Form
    {
        #region Variable
        
        #endregion

        #region Object
        
        #endregion
        public frmZoneBranch()
        {
            InitializeComponent();
        }

        private void frmZoneBranch_Load(object sender, EventArgs e)
        {
            GetZones();
        }

        private void GetZones()
        {
            DataTable dt = new DataTable();
            dt = Bll_Branch.GetAllZones();
            comboZones.DataSource = dt;
            comboZones.DisplayMember = "Name";
            comboZones.ValueMember = "Code";

        }

        private void btnSave_Click(object sender, EventArgs e)
        {

        }
    }
}
