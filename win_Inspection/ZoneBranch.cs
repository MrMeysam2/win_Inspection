using Business;
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
    public partial class frmZoneBranch : Form
    {
        #region Variable

        #endregion

        #region Object
        cmnBranch cmn = new cmnBranch();
        #endregion
        public frmZoneBranch()
        {
            InitializeComponent();
        }

        private void frmZoneBranch_Load(object sender, EventArgs e)
        {
            GetZones();
            GetAllBranchs();
        }

        private void GetAllBranchs()
        {
            dgListBranchs.DataSource = Bll_Branch.GetAllBranchs();
            dgListBranchs.Columns["Id"].HeaderText = "شناسه";
            dgListBranchs.Columns["Code"].HeaderText = "کد شعبه";
            dgListBranchs.Columns["Name"].HeaderText = "نام شعبه";
            dgListBranchs.Columns["Tel"].HeaderText = "شماره تماس";
            dgListBranchs.Columns["Address"].HeaderText = "آدرس";
            dgListBranchs.Columns["CityName"].HeaderText = "نام شهر";

            for (int i = 0; i < dgListBranchs.Rows.Count; i += 2)
            {
                dgListBranchs.Rows[i].DefaultCellStyle.BackColor = Color.Khaki;
            }
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
            if (!string.IsNullOrEmpty(txtName.Text) || !string.IsNullOrEmpty(txtCode.Text))
            {
                cmn.Name = txtName.Text.Trim();
                cmn.Code = Convert.ToInt32(txtCode.Text);
                cmn.Address = txtAddress.Text.Trim();
                cmn.CityName = txtCityName.Text.Trim();
                cmn.Tel = txtTel.Text.Trim();
                cmn.IsActive = true;
                cmn.ZoneCode = (int)comboZones.SelectedValue;
                //cmn.BranchId = (int)comboBranchId.SelectedValue;

                int ret = Bll_Branch.Add(cmn);
                if (ret != 0)
                {
                    ClearForm();
                    MessageBox.Show("عملیات موفق");
                    GetAllBranchs();
                }
                else
                    MessageBox.Show("عملیات ناموفق");
            }
            else
                MessageBox.Show("نام شعبه یا کد شعبه خالی می باشد");
            
        }

        private void ClearForm()
        {
            
        }
    }
}
