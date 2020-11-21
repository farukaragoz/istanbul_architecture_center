using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class hakkimizda : System.Web.UI.Page
{
    Metodlar klas = new Metodlar();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dtHakkimdaYazi = klas.GetDataTable("select * from hakkimdaYazilar");
        rpHakkimdaYazi.DataSource = dtHakkimdaYazi;
        rpHakkimdaYazi.DataBind();
    }
}