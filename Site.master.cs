using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Site : System.Web.UI.MasterPage
{
    Metodlar klas = new Metodlar();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dtMenuler = klas.GetDataTable("select * from menuler");
        rpMenuler.DataSource = dtMenuler;
        rpMenuler.DataBind();

    }
}
