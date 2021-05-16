using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Collections.Generic;

/// <summary>
/// Summary description for sepet
/// </summary>
public class sepet
{
    public Dictionary<int, urun> urunler = null;
    
	public sepet()
	{
        this.urunler = new Dictionary<int, urun>();
	}

    public void Ekle(urun yeniUrun)
    {
        if (this.urunler.ContainsKey(yeniUrun.Id))
        {
            this.urunler[yeniUrun.Id].Adet += yeniUrun.Adet;//bu urun zaten var sayisi arttir 
        }
        else
        {
            this.urunler.Add(yeniUrun.Id, yeniUrun);// yeniUrun'u  ekle
        }
    }

}
