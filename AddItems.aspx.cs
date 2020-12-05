﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace EyeBuyStore
{
    public partial class AddItems : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bindWearType();//call the function
            bindSearchType();
            bindCategory();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string userid, usertype, status;
            userid = "admin";
            usertype = "admin";
            status = "ok";

            FileUpload1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(FileUpload1.FileName));
            string link = "images/" + Path.GetFileName(FileUpload1.FileName);

            SqlConnection conn = new SqlConnection(DBClass.connectionString);                                                                                     //Items(title, category, unitPrice, quantity, ManDate, ExpiryDate, image, Remarks)

            string query = "insert into Items(title,category,unitPrice,quantity,ManDate,ExpiryDate,image,Remarks,searchType,wearType,userid,usertype,status) values ('" + TextBox1.Text + "','" + DropDownList1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + Label1.Text + "','" + Label2.Text + "','" + link + "','" + TextBox4.Text + "','" + DropDownList2.Text + "','" + DropDownList3.Text + "','" + userid + "','" + usertype + "','" + status + "')";


            SqlCommand sqlCmd = new SqlCommand(query, conn);
            conn.Open();
            sqlCmd.ExecuteNonQuery();// insertion into db
            conn.Close();
            Label3.Text = "Record is saved seccessfully";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddItems.aspx");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Label1.Text = Calendar1.SelectedDate.ToString();
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            Label2.Text = Calendar2.SelectedDate.ToString();
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



            DropDownList1.DataTextField = "title";

            DropDownList1.DataValueField = "title";

            DropDownList1.DataSource = ds;

            DropDownList1.DataBind();

            con.Close();


        }



        private void bindWearType()
        {
            //function defination
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



            DropDownList2.DataTextField = "WearType";

            DropDownList2.DataValueField = "WearType";

            DropDownList2.DataSource = ds;

            DropDownList2.DataBind();

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



            DropDownList3.DataTextField = "SearchType";

            DropDownList3.DataValueField = "SearchType";

            DropDownList3.DataSource = ds;

            DropDownList3.DataBind();

            con.Close();


        }





    }
}