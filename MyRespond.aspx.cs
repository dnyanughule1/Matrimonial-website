using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Matrimony
{
    public partial class MyRespond : System.Web.UI.Page
    {
        DBConnection db = new DBConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                Object[][] enqdata = db.getAllRecord("select * from enquiry where resuser = '" + Session["username"] + "'");

                String nesquery = "";
                for (int i = 0; i < enqdata.Length; i++)
                {
                    if (i == 0)
                        nesquery = nesquery + " username = '" + enqdata[i][1] + "'";
                    else
                        nesquery = nesquery + " or username = '" + enqdata[i][1] + "'";
                }
                if (nesquery.Length > 0)
                {
                    Object[][] alldata = db.getAllRecord("select * from users where username <> '" + Session["username"] + "' and " + nesquery);

                    //String msg = "validate('" + alldata[0][0] + "')";

                    DataTable dt = new DataTable();
                    dt.Columns.Add("SrNo", Type.GetType("System.String"));
                    dt.Columns.Add("Details", Type.GetType("System.String"));
                    dt.Columns.Add("Name", Type.GetType("System.String"));
                    dt.Columns.Add("Caste", Type.GetType("System.String"));
                    dt.Columns.Add("FileName", Type.GetType("System.String"));
                    dt.Columns.Add("ID", Type.GetType("System.String"));
                    for (int i = 0; i < alldata.Length; i++)
                    {
                        dt.Rows.Add();
                        dt.Rows[dt.Rows.Count - 1]["ID"] = alldata[i][0];
                        dt.Rows[dt.Rows.Count - 1]["SrNo"] = (i + 1);
                        dt.Rows[dt.Rows.Count - 1]["Name"] = alldata[i][1];
                        dt.Rows[dt.Rows.Count - 1]["Caste"] = alldata[i][7] + " " + alldata[i][8];
                        dt.Rows[dt.Rows.Count - 1]["Details"] = "Address : " + alldata[i][5] + " " + alldata[i][6] + " Mobile :" + alldata[i][4] + ", Age : " + alldata[i][3];
                        dt.Rows[dt.Rows.Count - 1]["FileName"] = Path.GetFileName("~/Upload/" + alldata[i][11]);

                    }
                    Grid.DataSource = dt;
                    Grid.DataBind();
                }
            }
        }
    }
}