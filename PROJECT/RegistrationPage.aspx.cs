using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;

namespace PROJECT
{
    public partial class RegistrationPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"server=LAPTOP-MLD832KF\SQLEXPRESS;database=ProjectDB;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ins = "insert into Register values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "'," + TextBox4.Text + ",'" + DropDownList1.SelectedItem.Text + "','" + TextBox5.Text + "'," + TextBox6.Text + ",'" + TextBox7.Text + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (i == 1)
            {
                Label1.Visible = true;
                Label1.Text = "Inserted Successfully!";
            }
        }
    }
}