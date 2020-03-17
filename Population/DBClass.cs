using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Population
{
    public class DBClass
    {
        static SqlConnection con = null;
        static SqlCommand cmd = null;
        public static int getAppId()
        {
            int C = 0;
            try
            {
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["Sqlcon"].ToString());
                con.Open();
                cmd = new SqlCommand("select max(applicationid) from populationcensus", con);
                string s = cmd.ExecuteScalar().ToString();
                if (s == "")
                    C++;
                else
                    C = int.Parse(s) + 1;
            }
            catch(SqlException E)
            {

            }
            finally
            {
                con.Close();
            }
            return C;
        }
        public string SaveMembers(List<Population> L)
        {
            string str = null;
            try
            {
                con = new SqlConnection(ConfigurationManager.ConnectionStrings["Sqlcon"].ToString());
                con.Open();
                cmd = new SqlCommand("sp_population", con);
                cmd.CommandType = CommandType.StoredProcedure;
                DataTable MyTable = new DataTable();
                MyTable.Columns.Add("ApplicationId", typeof(Int32));
                MyTable.Columns.Add("MemberId", typeof(Int32));
                MyTable.Columns.Add("Firstname", typeof(string));
                MyTable.Columns.Add("Middlename", typeof(string));
                MyTable.Columns.Add("Lastname", typeof(string));
                MyTable.Columns.Add("Suffix", typeof(string));
                MyTable.Columns.Add("Dob", typeof(DateTime));
                MyTable.Columns.Add("Gender", typeof(string));
                for (int i = 0; i < L.Count; i++)
                {
                    MyTable.Rows.Add(L[i].ApplicationId, L[i].MemberId, L[i].Firstname, L[i].Middlename, L[i].Lastname, L[i].Suffix, L[i].Dob, L[i].Gender);
                }
                SqlParameter P = new SqlParameter("@PCensus", MyTable);
                P.SqlDbType = SqlDbType.Structured;
                cmd.Parameters.Add(P);
                cmd.ExecuteNonQuery();
                str= "Application submitted with " + L.Count + "members details.Your ApplicationId is" + L[0].ApplicationId;
                
            }
            catch (SqlException E)
            {

            }
            finally
            {
                con.Close();
            }
            return str;
        }
    }
}