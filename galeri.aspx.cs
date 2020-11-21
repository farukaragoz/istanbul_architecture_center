using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class galeri : System.Web.UI.Page
{
    Metodlar klas = new Metodlar();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dtGaleri = klas.GetDataTable("select * from galeri");

        for (int i = 0; i < dtGaleri.Rows.Count; i++)
        {
            if(i <= dtGaleri.Rows.Count/2)
                ltrl_col_1.Text += "<img src='" + dtGaleri.Rows[i]["Resim"] + "' style='" + dtGaleri.Rows[i]["ResimStyle"] + "'/>";
            else
                ltrl_col_2.Text += "<img src='" + dtGaleri.Rows[i]["Resim"] + "' style='" + dtGaleri.Rows[i]["ResimStyle"] + "'/>";
        }



    }
}