using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Population
{
    public partial class HouseHold : System.Web.UI.Page
    {
        List<Population> L =new List<Population>() ;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["P"]!=null)
                L= (List<Population>)Session["P"];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Population P = new Population();
            P.ApplicationId = DBClass.getAppId();
            P.MemberId = L.Count + 1;
            P.Firstname = txtFirst.Text;
            P.Middlename = txtMi.Text;
            P.Lastname = txtLast.Text;
            P.Suffix = DropDownList1.Text;
            P.Dob = DateTime.Parse(txtdate.Text);
            if (RdbMale.Checked)
                P.Gender = "Male";
            else
                P.Gender = "Female";
            L.Add(P);
            Session["P"] = L;
            txtFirst.Text = "";
            txtMi.Text = "";
            txtLast.Text = "";
            if (RdbMale.Checked)
                RdbMale.Checked = false;
            else
                RdbFemale.Checked = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DBClass D = new DBClass();
            string s=D.SaveMembers(L);
            txtFirst.Text = "";
            txtMi.Text = "";
            txtLast.Text = "";
            if (RdbMale.Checked)
                RdbMale.Checked = false;
            else
                RdbFemale.Checked = false;
            Session.Remove("P");
            Response.Redirect("AppMsg.aspx?s=" + s);
        }
        
    }
}