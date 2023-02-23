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
    public partial class frmDashboard : Form
    {
        frmSaveInspection frmSaveInspection = new frmSaveInspection();
        frmListForms frmListForms = new frmListForms();
        frmZoneBranch frmZoneBranch = new frmZoneBranch();
        frmRegister frmRegister = new frmRegister();


        public frmDashboard()
        {
            InitializeComponent();
        }
        private void frmDashboard_Load(object sender, EventArgs e)
        {

        }
        private void txtRegister_Click(object sender, EventArgs e)
        {
            frmRegister.Show();
        }

        private void btnSaveInspection_Click(object sender, EventArgs e)
        {
            frmSaveInspection.Show();
        }

        private void btnForms_Click(object sender, EventArgs e)
        {
            frmListForms.Show();
        }

        private void btnZoneBranch_Click(object sender, EventArgs e)
        {
            frmZoneBranch.Show();
        }
    }
}
