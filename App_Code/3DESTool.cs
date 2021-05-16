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
using System.Security.Cryptography;
using System.IO;
using System.Text;

/// <summary>
/// Summary description for _3DESTool
/// </summary>
public class _3DESTool
{
	public _3DESTool()
	{
	}

    public string Sifrele(string strGiris)
    {
        string sonuc = "";
        if (strGiris == "" || strGiris == null)
        {
            throw new ArgumentNullException("Şifrelenecek veri yok.");
        }
        else
        {
            byte[] aryKey = ASCIIEncoding.GetEncoding(0).GetBytes("1#234567***345%&=?'45678");
            byte[] aryIV = ASCIIEncoding.GetEncoding(0).GetBytes("12345678");
            TripleDESCryptoServiceProvider dec = new TripleDESCryptoServiceProvider();
            MemoryStream ms = new MemoryStream();
            CryptoStream cs = new CryptoStream(ms, dec.CreateEncryptor(aryKey, aryIV), CryptoStreamMode.Write);
            StreamWriter writer = new StreamWriter(cs);
            writer.Write(strGiris);
            writer.Flush();
            cs.FlushFinalBlock();
            writer.Flush();
            //sonuc = Convert.ToBase64String(ms.GetBuffer(), 0, (int)ms.Length);
            sonuc = BitConverter.ToString(ms.GetBuffer(), 0, 32).Replace("-", "");
            writer.Dispose();
            cs.Dispose();
            ms.Dispose();
        }
        return sonuc;
    }


    public string Coz(string strGiris)
    {
        string strSonuc = "";
        if (strGiris == "" || strGiris == null)
        {
            throw new ArgumentNullException("Şifrelenecek veri yok.");
        }
        else
        {
            byte[] aryKey = ASCIIEncoding.GetEncoding(0).GetBytes("1#234567***345%&=?'45678");
            byte[] aryIV = ASCIIEncoding.GetEncoding(0).GetBytes("12345678");
            TripleDESCryptoServiceProvider cryptoProvider = new TripleDESCryptoServiceProvider();
            MemoryStream ms = new MemoryStream(Convert.FromBase64String(strGiris));
            CryptoStream cs = new CryptoStream(ms, cryptoProvider.CreateDecryptor(aryKey, aryIV), CryptoStreamMode.Read);
            StreamReader reader = new StreamReader(cs);
            strSonuc = reader.ReadToEnd();
            reader.Dispose();
            cs.Dispose();
            ms.Dispose();
        }
        return strSonuc;
    }
}
