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
    public partial class Search : System.Web.UI.Page
    {
        Object[][] alldata;
        DBConnection db = new DBConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                Object[] cityname = db.get1D("SELECT distinct city FROM users order by id");
                for (int i = 0; i < cityname.Length; i++)
                    DropDownList_city.Items.Add(cityname[i].ToString());

                Object[] religionname = db.get1D("SELECT distinct religion FROM users order by id");
                for (int i = 0; i < religionname.Length; i++)
                    DropDownList_religion.Items.Add(religionname[i].ToString());

                alldata = db.getAllRecord("select * from users where username <> '"+ Session["username"] + "' order by id");
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
        protected void Button_Click(object sender, EventArgs e)
        {
            String gender = DropDownList_gender.Text;
            String city = DropDownList_city.Text;
            String religion = DropDownList_religion.Text;


            alldata = db.getAllRecord("select * from users where username <> '"+ Session["username"] + "' and city = '"+city+"' and gender='"+gender+"' and religion = '"+religion+"' order by id");
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