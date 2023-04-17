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
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.IO;

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

        private void button2_Click(object sender, EventArgs e)
        {
            //testStatic st = new testStatic();
            testStatic.funcheck();
            try
            {
                MessageBox.Show("try");
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                MessageBox.Show("finally");
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            Guid Id = Guid.NewGuid();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Document document = new Document();

            PdfWriter.GetInstance(document, new FileStream("C:/Users/test/Desktop/New folder/outputPath.pdf", FileMode.Create));

            document.Open();

            string[] imagePaths =
                {
                "C:/Users/test/Desktop/New folder/pic1.jpg",
                "C:/Users/test/Desktop/New folder/pic2.jpg",
                "C:/Users/test/Desktop/New folder/pic3.jpg",
                "C:/Users/test/Desktop/New folder/pic4.jpg"
            };

            foreach (string imagePath in imagePaths)
            {
                iTextSharp.text.Image image = iTextSharp.text.Image.GetInstance(imagePath);
                image.ScaleToFit(document.PageSize.Height, document.PageSize.Width);
                document.Add(image);
            }

            document.Close();

            var content = File.ReadAllBytes("C:/Users/test/Desktop/New folder/outputPath.pdf");
            var s = Convert.ToBase64String(content);
        }
    }
}
