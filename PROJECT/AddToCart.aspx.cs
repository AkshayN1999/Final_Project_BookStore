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
    public partial class AddToCart : System.Web.UI.Page
    {
        ConnectionClass obj = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["buyitems"] == null)
                {
                    Button1.Enabled = false;
                }
                else
                {
                    Button1.Enabled = true;
                }

                //adding items to the grid view
                Session["addproduct"] = false;
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("pid");
                dt.Columns.Add("pname");
                dt.Columns.Add("pimage");
                dt.Columns.Add("pprice");
                dt.Columns.Add("pquantity");
                dt.Columns.Add("ptotalprice");

                if(Request.QueryString["id"] != null)
                {
                    if (Session["buyitems"] == null)
                    {
                        dr = dt.NewRow();

                        string ing = "select * from ProductTab where ProductId=" + Request.QueryString["id"];
                        DataSet ds = obj.Fn_adapter(ing);

                        dr["sno"] = 1;
                        dr["pid"] = ds.Tables[0].Rows[0]["ProductId"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["PName"].ToString();
                        dr["pimage"] = ds.Tables[0].Rows[0]["PImage"].ToString();
                        dr["pprice"] = ds.Tables[0].Rows[0]["PPrice"].ToString();
                        dr["pquantity"] = Request.QueryString["quantity"];

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["PPrice"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"]);
                        int TotalPrice = quantity * price;
                        dr["ptotalprice"] = TotalPrice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Button1.Enabled = true;

                        GridView1.FooterRow.Cells[5].Text = "Total Amount:";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");
                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count; dr = dt.NewRow();

                        string ing = "select * from ProductTab where ProductId=" + Request.QueryString["id"];
                        DataSet ds = obj.Fn_adapter(ing);

                        dr["sno"] = sr + 1;
                        dr["pid"] = ds.Tables[0].Rows[0]["ProductId"].ToString();
                        dr["pname"] = ds.Tables[0].Rows[0]["PName"].ToString();
                        dr["pimage"] = ds.Tables[0].Rows[0]["PImage"].ToString();
                        dr["pprice"] = ds.Tables[0].Rows[0]["PPrice"].ToString();
                        dr["pquantity"] = Request.QueryString["quantity"];

                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["PPrice"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"]);
                        int TotalPrice = quantity * price;
                        dr["ptotalprice"] = TotalPrice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                        Button1.Enabled = true;

                        GridView1.FooterRow.Cells[5].Text = "Total Amount:";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");

                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if(GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount:";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                    }
                }
            }
            string OrderDate = DateTime.Now.ToShortDateString();
            Session["orderdate"] = OrderDate;
            orderid();
        }
        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int totalprice = 0;
            while (i < nrow)
            {
                totalprice = totalprice + Convert.ToInt32(dt.Rows[i]["PPrice"].ToString());
                i = i + 1;
            }
            return totalprice;
        }
        public void orderid()
        {
            string alpha = "abCdeFgHijKlmnoPqrStuVWxyz123456789";
            Random r = new Random();
            char[] myarray = new char[5];
            for(int i = 0; i < 5; i++)
            {
                myarray[i] = alpha[(int)(35 * r.NextDouble())];
            }
            string orderid;
            orderid = "Order_ID: " + DateTime.Now.Hour.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(myarray) + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
            Session["Orderid"] = orderid;
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];

            for(int i=0;i<=dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);
                if(sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    break;
                }
            }

            //updating sno after removing item from cart
            for(int i=1;i<=dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();
            }
            Session["buyitems"] = dt;
            Response.Redirect("AddToCart.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];

            for(int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                string ins = "insert into OrderDetails(OrderId,SNo,ProductId,ProductName,Price,Quantity,OrderDate) values('" + Session["Orderid"] + "'," + dt.Rows[i]["sno"] + "," + dt.Rows[i]["pid"] + ",'" + dt.Rows[i]["pname"] + "'," + dt.Rows[i]["pprice"] + "," + dt.Rows[i]["pquantity"] + ",'" + Session["orderdate"] + "')";
                obj.Fn_NonQuery(ins);
            }

            if (Session["username"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
            else
            {
                if(GridView1.Rows.Count.ToString() == "0")
                {
                    Response.Write("<script>alert('Your Cart is Empty! You cannot place an order.');</script>");
                }
                else
                {
                    Response.Redirect("PlaceOrder.aspx");
                }
            }
        }
    }
}