using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Matrimony
{
    public partial class Enquiry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    Uri myUri = new Uri(Request.Url.AbsoluteUri);
                    string ID = HttpUtility.ParseQueryString(myUri.Query).Get("ID");

                    DBConnection db = new DBConnection();

                    Object[][] data = db.getAllRecord("select * from users where id = " + ID + "");

                    Object[][] checkdata = db.getAllRecord("select * from enquiry where requser = '" + Session["username"] + "' and resuser = '"+data[0][12]+"'");
                    if (checkdata.Length > 0)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Your Comment", "validate('Request alredy applied');", true);
                        Response.Redirect("Search.aspx");
                    }
                    else
                    {
                        String resuser = data[0][12].ToString();
                        String requser = Session["username"].ToString();

                        String query = "insert into enquiry(requser,resuser) values('" + requser + "','" + resuser + "')";
                        if (db.executeQuery(query) == 1)
                        {
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "Your Comment", "validate('Request has benn applied successfull');", true);
                            Response.Redirect("MyRequest.aspx");

                        }
                        else
                        {
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "Your Comment", "validate('Registration Failed');", true);
                        }
                    }
                }
                catch
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Your Comment", "validate('Registration Failed');", true);
                }
            }
        }
    }
}