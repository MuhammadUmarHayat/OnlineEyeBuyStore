using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace EyeBuyStore
{
    public partial class AddCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(DBClass.connectionString);

            string query = "insert into Category(Title,Discription,Date,mode) values('" + TextBox2.Text + "','" + TextBox3.Text + "','" + DateTime.Now.ToString() + "','"+TextBox6.Text+"')";


            SqlCommand sqlCmd = new SqlCommand(query, conn);
            conn.Open();
            sqlCmd.ExecuteNonQuery();// insertion into db
            conn.Close();
            Label1.Text = "Record is saved seccessfully";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCategory.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(DBClass.connectionString);

            string query = "insert into Admin_Wear_Search_Type(wearType,SearchType) values('" + TextBox4.Text + "','" + TextBox5.Text + "')";


            SqlCommand sqlCmd = new SqlCommand(query, conn);
            conn.Open();
            sqlCmd.ExecuteNonQuery();// insertion into db
            conn.Close();
            Label1.Text = "Record is saved seccessfully";
        }
    }
}