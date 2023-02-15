using Business.Auth;
using Common;
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
        #region Variable
        private static bool _exiting;
        #endregion

        #region Object
        cmnUsers cmn = new cmnUsers();
        #endregion

        public frmRegister()
        {
            InitializeComponent();
        }

        /// <summary>
        /// Save Form
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnSave_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtUsername.Text) || !string.IsNullOrEmpty(txtPassword.Text))
            {
                cmn.FirstName = txtFirstName.Text.Trim();
                cmn.LastName = txtLastName.Text.Trim();
                cmn.NationalCode = txtNationalCode.Text.Trim();
                cmn.Password = txtPassword.Text.Trim();
                cmn.PersonnelCode = txtPersonnelCode.Text.Trim();
                cmn.Username = txtUsername.Text.Trim();
                cmn.IsActive = true;

                int ret = Bll_Users.Add(cmn);
                if (ret != 0)
                    MessageBox.Show("عملیات موفق");
                else
                    MessageBox.Show("عملیات ناموفق");
            }
            else
                MessageBox.Show("نام کاربری یا گذرواژه خالی می باشد");

        }
        
        /// <summary>
        /// Clear From
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
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

        /// <summary>
        /// Exit Form
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
            //if (!_exiting && MessageBox.Show("آیا می خواهید خارج شوید؟",
            //           "نرم افزار بازرسی",
            //            MessageBoxButtons.OKCancel,
            //            MessageBoxIcon.Error) == DialogResult.OK)
            //{
            //    _exiting = true;
            //    // this.Close(); // you don't need that, it's already closing
            //    Environment.Exit(1);
            //}
        }
    }
}
