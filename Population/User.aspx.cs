using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Population
{
    public partial class User : System.Web.UI.Page
    {
        SqlConnection con = null;
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(!this.IsPostBack)
            //{
            //    this.Bind();
            //}
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["Sqlcon"].ToString());

        }
        private void Bind()
        {
            string str = null;
            //con = new SqlConnection(ConfigurationManager.ConnectionStrings["Sqlcon"].ToString());
            con.Open();
            str = "select * from PopulationCensus ";
            if (txtfname.Text.Length != 0)
            {
                str = str + " where Firstname=" + "\'" + txtfname.Text + "\'";
                txtfname.Text = " ";
            }
            else if (txtlname.Text.Length != 0)
            {
                str = str + " where Lastname=" + "\'" + txtlname.Text + "\'";
                txtlname.Text = " ";
            }
            else if (txtaid.Text.Length != 0)
            {
                str = str + "where ApplicationId=" + "\'" + int.Parse(txtaid.Text) + "\'";
                txtaid.Text = " ";
            }
            else
            {
                str = str + " where Dob=" + "\'" + DateTime.Parse(txtdob.Text) + "\'";
                txtdob.Text = " ";
            }
            //cmd = new SqlCommand("select * from PopulationCensus where ApplicationId=@aid or Firstname=@fn or Lastname=@ln or Dob=@d ", con);
            cmd = new SqlCommand(str, con);
            //cmd.Parameters.AddWithValue("@aid", txtaid.Text);
            //cmd.Parameters.AddWithValue("@fn", txtfname.Text);
            //cmd.Parameters.AddWithValue("@ln", txtlname.Text);
            //cmd.Parameters.AddWithValue("@d", txtdob.Text);
            SqlDataReader r = cmd.ExecuteReader();
            DataSet ds = new DataSet();
            ds.Tables.Add("T");
            ds.Tables["T"].Load(r);
            GridView1.DataSource = ds.Tables["T"];
            GridView1.DataBind();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Bind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            Bind();
        }
    }
}