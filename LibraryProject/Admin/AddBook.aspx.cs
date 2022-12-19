using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryProject.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            SqlDataSourceAdd.InsertCommand = "INSERT INTO [Books] ([id],[Author], [Title]) VALUES (9,'NewAuthor','New Book')";
            int rowsAffected = SqlDataSourceAdd.Insert();
        }
    }
}