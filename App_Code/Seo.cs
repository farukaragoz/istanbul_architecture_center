﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Linq;
using System.Text.RegularExpressions;

/// <summary>
/// Summary description for Seo
/// </summary>
public class Seo
{
	public Seo()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static string Temizle(string Metin)
    {
        string ifade = Metin;
        ifade = ifade.Replace("'", "");
        ifade = ifade.Replace("%", "");
        ifade = ifade.Replace("<", "");
        ifade = ifade.Replace(">", "");
        ifade = ifade.Replace("[", "");
        ifade = ifade.Replace("]", "");
        ifade = ifade.Replace("(", "");
        ifade = ifade.Replace(")", "");
        
        return ifade;
    }
    public static string bosluktemizle(string Metin)
    {
        string ifade = Metin;
        ifade = ifade.Replace(", ", ",");
        ifade = ifade.Replace(" ,", ",");
        return ifade;
    }
    public static string htltemizle(string text)
    { 
        if (text == null) return ""; return Regex.Replace(text, @"<(.|\n)*?>", string.Empty);
        string deger = text;
    }
    public static string urlseo(string Metin)
    {
        string deger = Metin;
        deger = deger.Replace("'", "");
        deger = deger.Replace("“", "");
        deger = deger.Replace("”", "");
        deger = deger.Replace("’", "");
        deger = deger.Replace("‘", "");
        deger = deger.Replace("*", "");
        deger = deger.Replace("/", "");
        deger = deger.Replace("(", "-");
        deger = deger.Replace(")", "-");
        deger = deger.Replace("+", "");
        deger = deger.Replace(".", "");
        deger = deger.Replace("#", "");
        deger = deger.Replace("[", "");
        deger = deger.Replace(" ", "-");
        deger = deger.Replace("]", "");
        deger = deger.Replace("<", "");
        deger = deger.Replace(">", "");
        deger = deger.Replace("&", "");
        deger = deger.Replace("?", "");
        deger = deger.Replace("!", "");
        deger = deger.Replace(",", "");
        deger = deger.Replace(";", "");
        deger = deger.Replace("ı", "i");
        deger = deger.Replace("ö", "o");
        deger = deger.Replace("ü", "u");
        deger = deger.Replace("ş", "s");
        deger = deger.Replace("ğ", "g");
        deger = deger.Replace("ç", "c");
        deger = deger.Replace("İ", "i");
        deger = deger.Replace("Ö", "o");
        deger = deger.Replace("Ü", "u");
        deger = deger.Replace("Ş", "s");
        deger = deger.Replace("Ğ", "g");
        deger = deger.Replace("Ç", "c");
        deger = deger.Replace('"', '-');
        deger = deger.Replace(":", "-");
        deger = deger.Replace("`", "-");
        deger = deger.Replace("–", "-");
        return deger;
    }
    public static string nbsp(string Metin)
    {
        string deger = Metin;
        
        deger = deger.Replace("&nbsp;", "");
        deger = deger.Replace("&Uuml;", "Ü");
        deger = deger.Replace("&uuml;", "ü");
        deger = deger.Replace("&ouml;", "ö");
        deger = deger.Replace("&Ouml;", "Ö");
        deger = deger.Replace("ER&Uuml;", "");
        deger = deger.Replace(";;", "");
        deger = deger.Replace("&#39;", "'");
        deger = deger.Replace("&rsquo;", "'");
        deger = deger.Replace("&ldquo;", "");
        deger = deger.Replace("&rdquo;", "");
        deger = deger.Replace("&lsquo;", "");
        deger = deger.Replace("&rsquo;", "");
        deger = deger.Replace("&ccedil;", "ç");
        deger = deger.Replace("&Ccedil;", "Ç");
        deger = deger.Replace("&acirc;", "â");
        deger = deger.Replace("&Acirc;", "Â");
        deger = deger.Replace("&icirc;", "î");
        deger = deger.Replace("&İcirc;", "Î");
        deger = deger.Replace("&ucirc;", "û");
        deger = deger.Replace("&Ucirc;", "Û");
        deger = deger.Replace("&quot;", "");
        deger = deger.Replace("&#39;", "'");
        
        return deger;
    }
    public static string key(string Metin)
    {
        string deger = Metin;
        deger = deger.Replace(" ", " ,");
        return deger;
    }
    public static string OzetCek(string Metin, int Karakter)
    {
        if (Metin.Length >= Karakter)
            Metin = Metin.Substring(0, Karakter);
        return Metin;
    }
    public static string Onay(string Onay)
    {
        string deger = "";

        if (Onay == "1")
            deger = "evet";
        else
            deger = "hayir";
        return deger;
    }

    public static int GetAlexaRank(string domain)
    {
        int alexaRank = 0;
        try
        {
            var url = string.Format("http://data.alexa.com/data?cli=10&dat=snbamz&url={0}", domain);
            var doc = XDocument.Load(url);
            var rank = doc.Descendants("POPULARITY").Select(node => node.Attribute("TEXT").Value)
            .FirstOrDefault();

            if (!int.TryParse(rank, out alexaRank))
                alexaRank = -1;
        }
        catch (Exception)
        {
            return -1;
        }
        return alexaRank;
    }

}