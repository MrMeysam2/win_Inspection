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
        frmRegister frmRegister = new frmRegister();
        frmRoleAccess frmRoleAccess = new frmRoleAccess();
        public frmDashboard()
        {
            InitializeComponent();
        }

        private void txtRegister_Click(object sender, EventArgs e)
        {
            frmRegister.Show();
        }

        private void frmDashboard_Load(object sender, EventArgs e)
        {

        }

        private void btnRoleAccess_Click(object sender, EventArgs e)
        {
            frmRoleAccess.Show();
        }
    }
}
