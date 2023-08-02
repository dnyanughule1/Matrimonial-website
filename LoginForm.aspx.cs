using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Matrimony
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button_login_Click(object sender, EventArgs e)
        {
            if (TextBox_username.Text.Length == 0 || TextBox_password.Text.Length == 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Your Comment", "validate('Please fill all details');", true);
            }
            else
            {
                try
                {
                    String username = TextBox_username.Text;
                    String password = TextBox_password.Text;

                    DBConnection db = new DBConnection();
                    if (db.login(username, password) == 1)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Your Comment", "validate('Login Successfully');", true);
                        Session["username"] = username;
                        Response.Redirect("Home.aspx");

                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Your Comment", "validate('Login Failed');", true);
                    }
                }
                catch
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Your Comment", "validate('Login Failed');", true);
                }
            }
        }
    }
}