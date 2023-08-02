using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Matrimony
{
    public partial class MyProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //Uri myUri = new Uri(Request.Url.AbsoluteUri);
                //get any parameters
                //string ID = HttpUtility.ParseQueryString(myUri.Query).Get("ID");
                //String msg = "validate('" + ID + "')";
                //ScriptManager.RegisterStartupScript(this, this.GetType(), "Your Comment", msg, true);

                DBConnection db = new DBConnection();
                String username = Session["username"].ToString();
                Object[][] data = db.getAllRecord("select * from users where username = '" + username + "'");

                
                TextBox_name.Text = "" + data[0][1];
                TextBox_gender.Text = "" + data[0][2];
                TextBox_age.Text = "" + data[0][3];
                TextBox_mobile.Text = "" + data[0][4];
                TextBox_address.Text = "" + data[0][5];
                TextBox_city.Text = "" + data[0][6];
                TextBox_caste.Text = "" + data[0][7];
                TextBox_religion.Text = "" + data[0][8];
                TextBox_occupation.Text = "" + data[0][9];
                TextBox_salary.Text = "" + data[0][10];
                TextBox_username.Text = "" + data[0][12];
                TextBox_password.Text = "" + data[0][13];

                Image1.ImageUrl = "~/Upload/" + data[0][11];

            }
        }
    }
}