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
    public partial class DeleteProduct : System.Web.UI.Page
    {
        ConnectionClass obj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                showgrid();
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection con = new SqlConnection(@"server=LAPTOP-MLD832KF\SQLEXPRESS;database=ProjectDB;Integrated Security=True");

            int i = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "delete from ProductTab where ProductId=" + id + "";
            SqlCommand cmd = new SqlCommand(del, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Deleted Successfully');</script>");
            showgrid();
        }
        public void showgrid()
        {
            string grid = "select * from ProductTab";
            DataSet ds = obj.Fn_adapter(grid);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}