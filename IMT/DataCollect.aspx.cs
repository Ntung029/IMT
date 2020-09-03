using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Ajax.Utilities;
using System.Xml;

namespace IMT
{
    public partial class InputPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DetailsView1.ChangeMode(DetailsViewMode.Edit);
                DetailsViewDatabind();
            }
        }

        private void DetailsViewDatabind()
        {
            string lotID = Request.QueryString["lotID"];
            string OperNum = Request.QueryString["OperNum"];
            if (lotID.IsNullOrWhiteSpace() || OperNum.IsNullOrWhiteSpace())
            {
                Response.Redirect("~/ErrorPage.aspx");
            }
            Response.Write(" Lot Number " + lotID);
            Response.Write(" Operation Number " + OperNum);

            // Establish a connection to the OperNum data table
            string IMTL2DBCS = ConfigurationManager.ConnectionStrings["IMTL2DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(IMTL2DBCS);
            try
            {
                SqlDataAdapter da = new SqlDataAdapter("Select * from tbl" + OperNum +, con);
                //Get data rom the tblOperNum
                DataSet ds1 = new DataSet();
                da.Fill(ds1);
                // check if lotID was proceeded before
                ds1.Tables[0].PrimaryKey = new DataColumn[] { ds1.Tables[0].Columns["lotID"] };
                if (ds1.Tables[0].Rows.Find(lotID) == null)
                {
                    // Insert new items to datatable @OperNum
                    DataRow newLot = ds1.Tables[0].NewRow();
                    newLot["lotID"] = lotID;
                    ds1.Tables[0].Rows.Add(newLot);
                    //Present the added lot to the detail view
                    DataView dv = ds1.Tables[0].DefaultView;
                    dv.RowFilter = "lotID = '" + lotID + "'";
                    // Change to detail view to edit the OperNum datatable @ LotID

                    DetailsView1.DataSource = dv;
                    DetailsView1.DataBind();
                }
                else
                {
                    // Error: lotID was proceeded
                    Response.Redirect("~/ErrorPage.aspx");
                }
            }
            catch (Exception ex)
            {
                //Response.Redirect("~/ErrorPage.aspx");
                Response.Write(ex);
            }
            finally
            {
                con.Close();
            }
        }



        protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {
            string lotID = Request.QueryString["lotID"];
            string OperNum = Request.QueryString["OperNum"];
            // Establish a connection to the OperNum data table
            string IMTL2DBCS = ConfigurationManager.ConnectionStrings["IMTL2DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(IMTL2DBCS);
            SqlDataAdapter da = new SqlDataAdapter("Select * from tbl" + OperNum + " where 0 = 1", con);
            DataSet ds = new DataSet();
            da.Fill(ds);

            // Added a new row based on tabOperNum column name
            DataRow newRow = ds.Tables[0].NewRow();

            //Get the input data from DetailsView
            // Iterate though the values entered by the user and HTML encode 
            // the values. This helps prevent malicious values from being 
            // stored in the data source.
            for (int i = 0; i < e.NewValues.Count; i++)
            {
                if (e.NewValues[i] != null)
                {
                    e.NewValues[i] = Server.HtmlEncode(e.NewValues[i].ToString());
                    newRow[i] = e.NewValues[i];
                }
            }
            ds.Tables[0].Rows.Add(newRow);
            SqlCommandBuilder sq = new SqlCommandBuilder(da);
            // Insert a new row to tblOperNum using dataAdapter
            da.Update(ds);
            DetailsView1.ChangeMode(DetailsViewMode.ReadOnly);
            
        }


    }
}