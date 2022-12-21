using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace LibraryProject.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            string stmt = "SELECT COUNT(*) FROM dbo.Books";
            int Id = 0;
            string ConnectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection myConnection = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand(stmt, myConnection);
            myConnection.Open();
            Id = (int)cmd.ExecuteScalar();
            Id++;
            string strRealPath;
            strRealPath = Request.PhysicalApplicationPath;
            strRealPath += "Images\\";
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(strRealPath + FileUpload1.FileName);
                string IMG = FileUpload1.FileName;
                SqlDataSourceAdd.InsertCommand = "INSERT INTO [Books] ([Id], [Title], [Author],[Description],[Image])" + "VALUES ('" + Id + "','" + TextBoxTitle.Text + "','" + TextBoxAuthor.Text + "','" + TextBoxDesc.Text + "','" + IMG +"')";
                int rowsAffected = SqlDataSourceAdd.Insert();
            }
        }
    }
}