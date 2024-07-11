using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROJECT
{
    public partial class LoginPage : System.Web.UI.Page
    {
        ConnectionClass obj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ins = "select count(User_Id) from Register where Email='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
            string cid = obj.Fn_Scalar(ins);
            if (cid == "1")
            {
                if(TextBox1.Text == "Admin@gmail.com" && TextBox2.Text == "123")
                {
                    Session["username"] = TextBox1.Text;
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    Session["username"] = TextBox1.Text;
                    Response.Redirect("Default.aspx");
                }
                
                //LinkButton1.visible = true;
                //HyperLink1.visible = false;
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Incorrect Details, Try again!";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}