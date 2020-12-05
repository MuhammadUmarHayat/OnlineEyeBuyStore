using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EyeBuyStore
{
    public partial class DoctorAdvices : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userid"] != null)
            {


                Label1.Text = Session["userid"].ToString();
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(DBClass.connectionString);

            string query = "insert into Doctor_Advices(DocID,userid,advice,Date) values('" + Label1.Text + "','" + DropDownList1.Text + "','" + TextBox1.Text+ "','" + DateTime.Now.ToString() + "')";


            SqlCommand sqlCmd = new SqlCommand(query, conn);
            conn.Open();
            sqlCmd.ExecuteNonQuery();// insertion into db
            conn.Close();
            Label2.Text = "Record is saved seccessfully";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("DoctorAdvices.aspx");
        }
    }
}