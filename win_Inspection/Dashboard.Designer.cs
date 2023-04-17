
namespace win_Inspection.FormAuth
{
    partial class frmDashboard
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmDashboard));
            this.txtRegister = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.panel3 = new System.Windows.Forms.Panel();
            this.btnZoneBranch = new System.Windows.Forms.Button();
            this.btnForms = new System.Windows.Forms.Button();
            this.btnSaveInspection = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.panel2.SuspendLayout();
            this.panel3.SuspendLayout();
            this.SuspendLayout();
            // 
            // txtRegister
            // 
            this.txtRegister.BackColor = System.Drawing.Color.White;
            this.txtRegister.Font = new System.Drawing.Font("B Nazanin", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(178)));
            this.txtRegister.Location = new System.Drawing.Point(43, 189);
            this.txtRegister.Name = "txtRegister";
            this.txtRegister.Size = new System.Drawing.Size(135, 46);
            this.txtRegister.TabIndex = 4;
            this.txtRegister.Text = "ثبت کاربر";
            this.txtRegister.UseVisualStyleBackColor = false;
            this.txtRegister.Click += new System.EventHandler(this.txtRegister_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("B Nazanin", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(178)));
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.Location = new System.Drawing.Point(80, 13);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(54, 24);
            this.label1.TabIndex = 4;
            this.label1.Text = "داشبورد";
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.Control;
            this.panel1.Font = new System.Drawing.Font("B Nazanin", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(178)));
            this.panel1.Location = new System.Drawing.Point(0, 1);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(712, 54);
            this.panel1.TabIndex = 4;
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.SystemColors.InfoText;
            this.panel2.Controls.Add(this.label1);
            this.panel2.Font = new System.Drawing.Font("B Nazanin", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(178)));
            this.panel2.Location = new System.Drawing.Point(713, 1);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(219, 54);
            this.panel2.TabIndex = 5;
            // 
            // panel3
            // 
            this.panel3.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("panel3.BackgroundImage")));
            this.panel3.Controls.Add(this.btnZoneBranch);
            this.panel3.Controls.Add(this.btnForms);
            this.panel3.Controls.Add(this.btnSaveInspection);
            this.panel3.Controls.Add(this.txtRegister);
            this.panel3.Font = new System.Drawing.Font("B Nazanin", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(178)));
            this.panel3.Location = new System.Drawing.Point(713, 56);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(219, 514);
            this.panel3.TabIndex = 6;
            // 
            // btnZoneBranch
            // 
            this.btnZoneBranch.BackColor = System.Drawing.Color.White;
            this.btnZoneBranch.Font = new System.Drawing.Font("B Nazanin", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(178)));
            this.btnZoneBranch.Location = new System.Drawing.Point(43, 137);
            this.btnZoneBranch.Name = "btnZoneBranch";
            this.btnZoneBranch.Size = new System.Drawing.Size(135, 46);
            this.btnZoneBranch.TabIndex = 3;
            this.btnZoneBranch.Text = "سرپرستی و شعب";
            this.btnZoneBranch.UseVisualStyleBackColor = false;
            this.btnZoneBranch.Click += new System.EventHandler(this.btnZoneBranch_Click);
            // 
            // btnForms
            // 
            this.btnForms.BackColor = System.Drawing.Color.White;
            this.btnForms.Font = new System.Drawing.Font("B Nazanin", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(178)));
            this.btnForms.Location = new System.Drawing.Point(43, 85);
            this.btnForms.Name = "btnForms";
            this.btnForms.Size = new System.Drawing.Size(135, 46);
            this.btnForms.TabIndex = 2;
            this.btnForms.Text = "لیست فرم ها";
            this.btnForms.UseVisualStyleBackColor = false;
            this.btnForms.Click += new System.EventHandler(this.btnForms_Click);
            // 
            // btnSaveInspection
            // 
            this.btnSaveInspection.BackColor = System.Drawing.Color.White;
            this.btnSaveInspection.Font = new System.Drawing.Font("B Nazanin", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(178)));
            this.btnSaveInspection.Location = new System.Drawing.Point(43, 33);
            this.btnSaveInspection.Name = "btnSaveInspection";
            this.btnSaveInspection.Size = new System.Drawing.Size(135, 46);
            this.btnSaveInspection.TabIndex = 1;
            this.btnSaveInspection.Text = "ثبت بازرسی";
            this.btnSaveInspection.UseVisualStyleBackColor = false;
            this.btnSaveInspection.Click += new System.EventHandler(this.btnSaveInspection_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("B Nazanin", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(178)));
            this.label2.Location = new System.Drawing.Point(261, 77);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(217, 24);
            this.label2.TabIndex = 7;
            this.label2.Text = "وضعیت بازرسی های ثبت شده در سامانه ";
            // 
            // frmDashboard
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Window;
            this.ClientSize = new System.Drawing.Size(934, 561);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Name = "frmDashboard";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "داشبورد";
            this.Load += new System.EventHandler(this.frmDashboard_Load);
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.panel3.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button txtRegister;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Button btnSaveInspection;
        private System.Windows.Forms.Button btnForms;
        private System.Windows.Forms.Button btnZoneBranch;
        private System.Windows.Forms.Label label2;
    }
}