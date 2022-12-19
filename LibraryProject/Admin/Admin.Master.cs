using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resturant.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
                Response.Redirect("login.aspx");
            else
            {
                LabelUser.Text = Session["UserName"].ToString();
                if (Session["UserType"].ToString() == "admin")
                    MultiViewControl.ActiveViewIndex = 0;
                else
                    MultiViewControl.ActiveViewIndex = 1;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["UserName"] = null;
            Response.Redirect("login.aspx");
        }
    }
}