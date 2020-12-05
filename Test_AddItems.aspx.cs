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
    public partial class Test_AddItems : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Test_AddItems.aspx");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Label1.Text = Calendar1.SelectedDate.ToString();
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            Label2.Text = Calendar2.SelectedDate.ToString();
        }
    }
}