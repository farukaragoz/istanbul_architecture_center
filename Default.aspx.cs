using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    Metodlar klas = new Metodlar();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dtResimler = klas.GetDataTable("select * from anasayfaResimler");
        rpResimler.DataSource = dtResimler;
        rpResimler.DataBind();

        DataTable dtYazilar = klas.GetDataTable("select * from anasayfaYazilar");
        rpYazilar.DataSource = dtYazilar;
        rpYazilar.DataBind();

        
    }
}