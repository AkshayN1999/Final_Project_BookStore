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
    public partial class ProductInsert : System.Web.UI.Page
    {
        ConnectionClass obj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/PImg/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));

            string ins = "insert into ProductTab values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + p + "'," + TextBox4.Text + ")";
            int i = obj.Fn_NonQuery(ins);
            if(i != 0)
            {
                Label1.Visible = true;
                Label1.Text = "Inserted Succesfully!";
            }
        }
    }
}