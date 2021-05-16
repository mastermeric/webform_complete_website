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

/// <summary>
/// Summary description for urun
/// </summary>
public class urun
{
	public urun()
	{		
	}


    int _id;
    public int Id
    {
        get { return _id; }
        set { _id = value; }
    }

    string _ad;
    public string Ad
    {
        get { return _ad; }
        set { _ad = value; }
    }

    decimal _fiyat;
    public decimal Fiyat
    {
        get { return _fiyat; }
        set { _fiyat = value; }
    }

    int _adet;

    public int Adet
    {
        get { return _adet; }
        set { _adet = value; }
    }

    decimal _toplamFiyat;
    public decimal ToplamFiyat
    {
        get { return this.Adet*this.Fiyat ; }
    }

}
