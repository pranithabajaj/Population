using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Population
{
    public class Population
    {
		int applicationId;
		int memberId;
		string firstname;
		string middlename;
		string lastname;
		string suffix;
		DateTime dob;
		string gender;
		SqlConnection con = null;
		SqlDataAdapter adp = null;

		public int ApplicationId { get => applicationId; set => applicationId = value; }
		public int MemberId { get => memberId; set => memberId = value; }
		public string Firstname { get => firstname; set => firstname = value; }
		public string Middlename { get => middlename; set => middlename = value; }
		public string Lastname { get => lastname; set => lastname = value; }
		public string Suffix { get => suffix; set => suffix = value; }
		public DateTime Dob { get => dob; set => dob = value; }
		public string Gender { get => gender; set => gender = value; }

		
	}
}