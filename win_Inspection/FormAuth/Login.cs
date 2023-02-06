using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Business.Auth;
using win_Inspection.FormAuth;

namespace win_Inspection
{
    public partial class frmLogin : Form
    {
        Register frmRegister = new Register();
        Bll_Auth bll = new Bll_Auth();
        bool resLogin;

        public frmLogin()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            resLogin = bll.Register(txtUsername.ToString(), txtPassword.ToString());
            if (resLogin)
            {
                frmRegister.ShowDialog();
            }
        }
    }
}
