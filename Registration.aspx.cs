using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Matrimony
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button_register_Click(object sender, EventArgs e)
        {
            // ScriptManager.RegisterStartupScript(this, this.GetType(), "Your Comment", "validate('Please fill all details');", true);
            if (TextBox_name.Text.Length == 0 || TextBox_age.Text.Length == 0 || TextBox_mobile.Text.Length == 0 || TextBox_address.Text.Length == 0 || TextBox_city.Text.Length == 0 || TextBox_caste.Text.Length == 0 || TextBox_religion.Text.Length == 0 || TextBox_occupation.Text.Length == 0 || TextBox_salary.Text.Length == 0 || TextBox_salary.Text.Length == 0 || TextBox_salary.Text.Length == 0 || TextBox_username.Text.Length == 0 || TextBox_password.Text.Length == 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Your Comment", "validate('Please fill all details');", true);
            }
            else
            {
                try
                {
                    String name = TextBox_name.Text;
                    String gender = DropDownList_gender.Text;
                    String address = TextBox_address.Text;
                    String age = TextBox_age.Text;
                    String mobile = TextBox_mobile.Text;
                    String city = TextBox_city.Text;
                    String caste = TextBox_caste.Text;
                    String religion = TextBox_religion.Text;
                    String occupation = TextBox_occupation.Text;
                    String salary = TextBox_salary.Text;
                    String username = TextBox_username.Text;
                    String password = TextBox_password.Text;

                    string folderPath = Server.MapPath("~/Upload/");
                    if (!Directory.Exists(folderPath))
                    {
                        //If folder does not exists. Create it.
                        Directory.CreateDirectory(folderPath);
                    }
                    //save file in the specified folder and path
                    String path1 = folderPath + Path.GetFileName(FileUpload1.FileName);
                    FileUpload1.SaveAs(path1);

                    String query = "insert into users(name,gender,age,mobile,address,city,caste,religion,occupacy,salary,profile,username,password) values('" + name +"','" + gender +"'," + age +",'" + mobile +"','" + address +"','" + city +"','" + caste +"','" + religion +"','" + occupation +"'," + salary + ",'" + FileUpload1.FileName +"','" + username +"','" + password +"')";
                    DBConnection db = new DBConnection();
                    if (db.executeQuery(query) == 1)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Your Comment", "validate('Registration Successfully');", true);
                        Response.Redirect("LoginForm.aspx");

                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Your Comment", "validate('Registration Failed');", true);
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