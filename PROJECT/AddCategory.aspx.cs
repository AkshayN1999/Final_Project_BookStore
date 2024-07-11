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
    public partial class AddCategory : System.Web.UI.Page
    {
        ConnectionClass obj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                showgrid();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string chck = "select * from CategoryTab where CategoryName='"+TextBox1.Text+"'";
            DataTable dt = obj.Fn_Datatable(chck);
            if (dt.Rows.Count == 1)
            {
                Label2.Visible = true;
                Label2.Text = "Category Name already exists!";
            }
            else
            {
                string ins = "insert into CategoryTab values('" + TextBox1.Text + "')";
                int i = obj.Fn_NonQuery(ins);
                if (i != 0)
                {
                    Label2.Visible = true;
                    Label2.Text = "Inserted Succesfully!";
                }
            }
            showgrid();
        }
        public void showgrid()
        {
            string grid = "select * from CategoryTab";
            DataSet ds = obj.Fn_adapter(grid);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection con = new SqlConnection(@"server=LAPTOP-MLD832KF\SQLEXPRESS;database=ProjectDB;Integrated Security=True");

            int i = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "delete from CategoryTab where CategoryId="+id+"";
            SqlCommand cmd = new SqlCommand(del,con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Deleted Successfully');</script>");
            showgrid();
        }
    }
}