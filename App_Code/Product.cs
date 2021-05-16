using System;
using System.Collections.Generic;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;

/// <summary>
/// Summary description for Product
/// </summary>
public class Product
{
    public int Id;
    public decimal Price;
    public string Description;
    public string ResimYolu;
    public Product(int id)
    {
        this.Id = id;
        OleDbConnection cnn = new OleDbConnection("provider=microsoft.jet.oledb.4.0;data source=" + HttpContext.Current.Server.MapPath("~/App_Data/urunler.mdb"));
        cnn.Open();
        OleDbCommand commandresimal = new OleDbCommand("Select* from alturun where alturunid = " + id, cnn);
        OleDbDataReader oku = commandresimal.ExecuteReader();

        if (oku.Read())
        {
            this.Price = Convert.ToDecimal(oku["urunfiyat"].ToString());
            this.Description = oku["urunadi"].ToString();
            this.ResimYolu = oku["alturunresim"].ToString();
        }
    }
}