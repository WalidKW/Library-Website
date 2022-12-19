using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resturant.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            DataView DV = (DataView)SqlDataSourceLogin.Select(DataSourceSelectArguments.Empty);

            if (DV.Count == 1)
            {

                if (TextBoxPassword.Text == DV.Table.Rows[0].ItemArray[2].ToString())
                {

                    if (DV.Table.Rows[0].ItemArray[4].ToString() == "1")
                    {
                        Session.Add("UserName", TextBoxUserName.Text);
                        Session.Add("UserType", DV.Table.Rows[0].ItemArray[3].ToString());

                        if (CheckBoxLogin.Checked == true)
                        {
                            Response.Cookies.Add(new HttpCookie("UserName", TextBoxUserName.Text));
                            Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(11);
                        }
                        Response.Redirect("ControlPanel.aspx");
                    }
                    else
                        LabelMessage.Text = "This account is not activated";
                }
                else
                    LabelMessage.Text = "The password is incorrect";
            }
            else
                LabelMessage.Text = "Username not found";
        }
    }
}