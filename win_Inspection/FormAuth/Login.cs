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
using Common;
using win_Inspection.FormAuth;

namespace win_Inspection
{
    public partial class frmLogin : Form
    {
        frmRegister frmRegister = new frmRegister();
        frmDashboard frmDashboard = new frmDashboard();

        public frmLogin()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                Common.cmnUsers cmn = new Common.cmnUsers();
                if (!string.IsNullOrEmpty(txtUsername.Text) && !string.IsNullOrEmpty(txtPassword.Text))
                {
                    cmn.Username = txtUsername.Text.Trim();
                    cmn.Password = txtPassword.Text.Trim();
                }
                else
                {
                    MessageBox.Show("لطفا نام کاربری و گذرواژه را وارد کنید");
                    return;
                }
                cmnUsers ret = Bll_Auth.CheckLogin(cmn);
                if (ret is null)
                    MessageBox.Show("خطا در اطلاعات ورودی");
                else
                {
                    this.Hide();
                    frmDashboard.Show();
                }
            }
            catch
            {
                MessageBox.Show("خطا در ثبت اطلاعات");
            }
        }

        private void btnRegister_Click(object sender, EventArgs e)
        {
            frmRegister.Show();
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
