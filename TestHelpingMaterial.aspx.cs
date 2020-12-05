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
    public partial class TestHelpingMaterial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Show();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //save


        }




        private void Show()
        {
            string query = "select * from items";

            // SqlConnection con = new SqlConnection(DBClass.connectionString);
            SqlConnection con = new SqlConnection(DBClass.connectionString);
            //Open database connection to connect to SQL Server
            con.Open();
            //Data table is used to bind the resultant data
            DataTable dt = new DataTable();
            // Create a new data adapter based on the specified query.
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            //SQl command builder is used to get data from database based on query
            //  SqlCommandBuilder cmd = new SqlCommandBuilder(da);
            //Fill data table
            da.Fill(dt);
            con.Close();
            if (dt.Rows.Count > 0)
            {

                DataList1.DataSource = dt;
                DataList1.DataBind();


            }
            else
            {


            }



        }
    }
}