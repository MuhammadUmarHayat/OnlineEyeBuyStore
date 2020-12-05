using System;
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
    public partial class AddHelpingMaterial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            showAll();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddHelpingMaterial.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            FileUpload1.SaveAs(Server.MapPath("~/AudioVideos/") + Path.GetFileName(FileUpload1.FileName));
            string audioLink = "AudioVideos/" + Path.GetFileName(FileUpload1.FileName);

            audioLink = "<video width=400 Controld><Source src=" + audioLink + "type=video/mp4></video>";




            FileUpload2.SaveAs(Server.MapPath("~/AudioVideos/") + Path.GetFileName(FileUpload2.FileName));
            string videoLink = "AudioVideos/" + Path.GetFileName(FileUpload1.FileName);

            videoLink = "<video width=400 Controld><Source src=" + videoLink + "type=video/mp4></video>";


      
            string itemID = DropDownList1.Text;
            string text = TextBox1.Text;


            SqlConnection conn = new SqlConnection(DBClass.connectionString);

            string query = "insert into Item_Helping_Material(ItemID,audio,vedio,text) values('" + itemID + "','" + audioLink + "','" + videoLink + "','" + text + "')";


            SqlCommand sqlCmd = new SqlCommand(query, conn);
            conn.Open();
            sqlCmd.ExecuteNonQuery();// insertion into db
            conn.Close();
            Label1.Text = "Record is saved seccessfully";
        }


        private void showAll()
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

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemDataBound1(object sender, DataListItemEventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {

        }
    }
}