using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace winTest
{
    public partial class Form1 : Form
    {
        string Fname = "shagha";
        string Lname = "sanati";
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=test;User ID=sa;Password=Aa@135642");
            SqlCommand cmd = new SqlCommand("insert into users (Fname,Lname) values (@fname,@lname)", con);
            cmd.Parameters.AddWithValue("@fname", Fname);
            cmd.Parameters.AddWithValue("@lname", Lname);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}
