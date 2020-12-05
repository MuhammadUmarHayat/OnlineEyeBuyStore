using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace EyeBuyStore
{
    public partial class ViewDoctorsDetailsForCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            show();
        }

        private void show()
        {
            string query = "select userid,name ,address,mobileNo,email from users where usertype='doctor' ";

            SqlConnection con = new SqlConnection(DBClass.connectionString);
            //Open database connection to connect to SQL Server
            con.Open();
            //Data table is used to bind the resultant data
            DataTable dt = new DataTable();
            // Create a new data adapter based on the specified query.
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            //SQl command builder is used to get data from database based on query
            // SqlCommandBuilder cmd = new SqlCommandBuilder(da);
            //Fill data table
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();



        }
    }
}