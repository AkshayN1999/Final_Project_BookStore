using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace PROJECT
{
    public partial class PlaceOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"server=LAPTOP-MLD832KF\SQLEXPRESS;database=ProjectDB;Integrated Security=True");

            con.Open();
            SqlCommand cmd = new SqlCommand("insert into CardDetail" + "(FName,LName,CardNo,ExpiryDate,CVV,BillingAddr) values (@FName,@LName,@CardNo,@ExpiryDate,@CVV,@BillingAddr)", con);
            cmd.Parameters.AddWithValue("@FName", TextBox1.Text);
            cmd.Parameters.AddWithValue("@LName", TextBox2.Text);
            cmd.Parameters.AddWithValue("@CardNo", TextBox3.Text);
            cmd.Parameters.AddWithValue("@ExpiryDate", TextBox4.Text);
            cmd.Parameters.AddWithValue("@CVV", TextBox5.Text);
            cmd.Parameters.AddWithValue("@BillingAddr", TextBox6.Text);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Payment Made Succesfully! You are getting redirected to final page.');</script>");
            Response.Redirect("FinalPage.aspx");
        }
    }
}