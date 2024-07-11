using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace PROJECT
{
    public partial class FinalPage : System.Web.UI.Page
    {
        ConnectionClass cls = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            string oid = "";
            string ins = "select * from OrderDetails";

            DataTable dt = cls.Fn_Datatable(ins);
            oid = dt.Rows[0][0].ToString();
            OrderIdnum.Text = oid;
        }
    }
}