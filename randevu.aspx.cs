using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class randevu : System.Web.UI.Page
{
    Metodlar klas = new Metodlar();
    protected void Page_Load(object sender, EventArgs e)
    {
        //string js = "function bilgi() {alert('Randevunuz alındı');}";
        //ScriptManager.RegisterStartupScript(this, this.GetType(), "js", js, true);

        

    }

    public string kodOlustur()
    {
        string[] veriler = { "0", "A", "B", "9", "C", "D", "1", "2", "E", "F", "G", "H", "I", "3", "J", "K", "L", "8", "M", "4", "N", "O", "5", "P", "R", "S", "T", "7", "U", "V", "Y", "Z", "6" };
        string kod = "";
        Random rnd = new Random();
        for (int i = 0; i < 6; i++)
        {
            kod += veriler[rnd.Next(0, veriler.Length)];
        }
        return kod;
    }

    protected void ddl1_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddl2.Items.Clear();
        if (ddl1.SelectedValue == "1")
        {
            ddl2.Items.Add("Exhibition");
            ddl2.Items.Add("Multipurpose Hall");
            ddl2.Items.Add("Lecture Hall");
            ddl2.Items.Add("Activity Spaces");
        }
        if (ddl1.SelectedValue == "2")
        {
            ddl2.Items.Add("Reading Room");
            ddl2.Items.Add("Group Study Rooms");
            ddl2.Items.Add("Personal Study Rooms");

        }
        if (ddl1.SelectedValue == "3")
        {
            ddl2.Items.Add("Faculty Offices");
        }
    }
    public string mesaj;
    public static void js_bilgi(string js, Control c)
    {
        ScriptManager.RegisterStartupScript(c, typeof(Page), "Hata", js, true);
    }
    protected void btnGonder_Click(object sender, EventArgs e)
    {
        if (ddl1.SelectedValue != "0")
        {
            mesaj = "Your appointment has been made." + "<br>Your Appointment Code: " + kodOlustur() + "<br>Please make your transactions with this code.";
            js_bilgi("$(document).ready(function () { $('.wp_alert_mask').slideToggle(400); $('#mesaj_yaz').html('" + mesaj + "'); $('#btn_close').click(function(){ $(this).attr('href','/randevu.aspx'); }); });", this);
        }
        else
        {
            mesaj = "Please select part";
            js_bilgi("$(document).ready(function () { $('.wp_alert_mask').slideToggle(400); $('#mesaj_yaz').html('" + mesaj + "');  $('#btn_close').click(function(){ $('.wp_alert_mask').slideToggle(400); }); });", this);
        }
    }
}