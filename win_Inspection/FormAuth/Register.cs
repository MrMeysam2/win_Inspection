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
    public partial class frmRegister : Form
    {
        public frmRegister()
        {
            InitializeComponent();
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            txtFirstName.Text = null;
            txtLastName.Text = null;
            txtNationalCode.Text = null;
            txtPassword.Text = null;
            txtPersonnelCode.Text = null;
            txtUsername.Text = null;
            //comboBranchId.Items = 0;
        }
    }
}
