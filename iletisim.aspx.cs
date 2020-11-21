using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class iletisim : System.Web.UI.Page
{
    Metodlar klas = new Metodlar();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dtAdres = klas.GetDataTable("select * from adres");
        DataTable dtAdresSosyaller = klas.GetDataTable("select * from adresSosyaller");

        for (int i = 0; i < dtAdres.Rows.Count; i++)
        {
            ltrl_yazilar.Text += "<span class='iletisimSpan'>" + dtAdres.Rows[i]["Adres"] + " </span>";
            ltrl_yazilar.Text += "<span class='iletisimSpan' style='margin-top: -60px;'> " + dtAdres.Rows[i]["Telefon"] + " </span>";
            ltrl_yazilar.Text += "<span class='iletisimSpan' style='margin-top: -83px;'> " + dtAdres.Rows[i]["Mail"] + " </span>";
        }

        for (int i = 0; i < dtAdresSosyaller.Rows.Count; i++)
        {

            ltrl_sosyaller.Text += "<i class='"+ dtAdresSosyaller.Rows[i]["Icon"]+"'></i>";

            //ltrl_sosyaller.Text += "<span class='iletisimSpan iletisimSocial' style='margin-top: -99px; '> <i class='" + dtAdresSosyaller.Rows[i]["IconTwitter"] + "'></i> <i class='" + dtAdresSosyaller.Rows[i]["IconInstagram"] + "'></i> <i class='" + dtAdresSosyaller.Rows[i]["IconFacebook"] + "'> </i><i class='" + dtAdresSosyaller.Rows[i]["IconGmail"] + "'></i>";

        }

    }



    public string mesaj;
    public static void js_bilgi(string js, Control c)
    {
        ScriptManager.RegisterStartupScript(c, typeof(Page), "Hata", js, true);
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        mesaj = "Your message has been received.";
        js_bilgi("$(document).ready(function () { $('.wp_alert_mask').slideToggle(400); $('#mesaj_yaz').html('" + mesaj + "'); $('#btn_close').click(function(){ $(this).attr('href','/iletisim.aspx'); }); });", this);


    }
}