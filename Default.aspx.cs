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
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["userid"] != null)
                {


                    Label2.Text = Session["userid"].ToString();
                }



                DataTable dt = new DataTable();
                dt = (DataTable)Session["buyitems"];
                if (dt != null)
                {

                    Label1.Text = dt.Rows.Count.ToString();
                }
                else
                {
                    Label1.Text = "0";

                }
                bindWearType();   //calling functions
                bindSearchType();
                bindCategory();
                ShowData();


            }
            else
            {

            }
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string category = DropDownList2.Text;
            string wearType = DropDownList3.Text;
            string searchtype = DropDownList4.Text;

            string query = "select * from items  where category='"+category+"' or wearType='"+wearType+"' or searchType='"+ searchtype + "' or Unitprice='"+DropDownList5.Text+"'";

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



            DataList1.DataSource = dt;
            DataList1.DataBind();










        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //string category = DropDownList2.Text;
            //string wearType = DropDownList3.Text;
            //string price = DropDownList4.Text;

            //string query = "select * from items";

            //SqlConnection con = new SqlConnection(DBClass.connectionString);
            ////Open database connection to connect to SQL Server
            //con.Open();
            ////Data table is used to bind the resultant data
            //DataTable dt = new DataTable();
            //// Create a new data adapter based on the specified query.
            //SqlDataAdapter da = new SqlDataAdapter(query, con);
            ////SQl command builder is used to get data from database based on query
            //SqlCommandBuilder cmd = new SqlCommandBuilder(da);
            ////Fill data table
            //da.Fill(dt);
            //DataList1.DataSource = dt;
            //DataList1.DataBind();

        }



        private void bindCategory()
        {
            SqlConnection con = new SqlConnection(DBClass.connectionString);

            con.Open();

            SqlCommand cmd = new SqlCommand("", con);

            cmd.CommandType = System.Data.CommandType.Text;

            cmd.CommandText = "SELECT DISTINCT title from category";

            SqlDataAdapter adpt = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();

            adpt.SelectCommand = cmd;

            adpt.Fill(ds);



            // bind domain with the dropdownlist



            DropDownList2.DataTextField = "title";

            DropDownList2.DataValueField = "title";

            DropDownList2.DataSource = ds;

            DropDownList2.DataBind();

            con.Close();


        }



        private void bindWearType()
        {

            SqlConnection con = new SqlConnection(DBClass.connectionString);

            con.Open();

            SqlCommand cmd = new SqlCommand("", con);

            cmd.CommandType = System.Data.CommandType.Text;

            cmd.CommandText = "SELECT DISTINCT WearType from Admin_wear_search_Type";

            SqlDataAdapter adpt = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();

            adpt.SelectCommand = cmd;

            adpt.Fill(ds);



            // bind domain with the dropdownlist



            DropDownList3.DataTextField = "WearType";

            DropDownList3.DataValueField = "WearType";

            DropDownList3.DataSource = ds;

            DropDownList3.DataBind();

            con.Close();

        }

        private void bindSearchType()
        {
            SqlConnection con = new SqlConnection(DBClass.connectionString);

            con.Open();

            SqlCommand cmd = new SqlCommand("", con);

            cmd.CommandType = System.Data.CommandType.Text;

            cmd.CommandText = "SELECT DISTINCT SearchType from Admin_wear_search_Type";

            SqlDataAdapter adpt = new SqlDataAdapter(cmd);

            DataSet ds = new DataSet();

            adpt.SelectCommand = cmd;

            adpt.Fill(ds);



            // bind domain with the dropdownlist



            DropDownList4.DataTextField = "SearchType";

            DropDownList4.DataValueField = "SearchType";

            DropDownList4.DataSource = ds;

            DropDownList4.DataBind();

            con.Close();


        }
        private void ShowData()
        {


            string query = "select * from items";

            SqlConnection con = new SqlConnection(DBClass.connectionString);
            //Open database connection to connect to SQL Server
            con.Open();
            //Data table is used to bind the resultant data
            DataTable dt = new DataTable();
            // Create a new data adapter based on the specified query.
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            //SQl command builder is used to get data from database based on query
            SqlCommandBuilder cmd = new SqlCommandBuilder(da);
            //Fill data table
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (IsPostBack)
            {
                if (e.CommandName == "addtocart")
                {

                    DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
                    Response.Redirect("addtocart2.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());

                }
                else if (e.CommandName == "addtowishlist")
                {

                    DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
                    Response.Redirect("wishList.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());

                }

            }
            else
            {



               
            }

        }

        protected void DataList1_ItemDataBound1(object sender, DataListItemEventArgs e)
        {

        }
    }
}