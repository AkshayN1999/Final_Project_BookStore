using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PROJECT
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductInsert.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCategory.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeleteProduct.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}