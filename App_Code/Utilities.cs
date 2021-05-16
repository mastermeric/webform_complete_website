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
using System.Net;
using System.Net.Mail;

/// <summary>
/// Summary description for Utilities
/// </summary>
public class Utilities
{
	public Utilities()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static void SendMail( string to, string subject, string body)
    {
        MailMessage myMail = new MailMessage("mailraporlama@gmail.com", to);
        myMail.Subject = subject;
        myMail.Body = body;
        SmtpClient mySmtpClient = new SmtpClient();
        myMail.Priority = MailPriority.High;
        mySmtpClient.Credentials = new System.Net.NetworkCredential("mailraporlama", "ahsenitakvim3666");
        mySmtpClient.Port = 587;
        mySmtpClient.Host = "smtp.gmail.com";
        mySmtpClient.EnableSsl = true;
        mySmtpClient.Send(myMail);
        

    }


    public static void LogError(Exception ex)
    {
        string hataTarihi = "Tarih:  " + DateTime.Now.ToLongDateString()+"\nSaat:  " + DateTime.Now.ToLongTimeString();
        string hataMesaji = "Hata Zamanı: " + hataTarihi;
        HttpContext myContext = System.Web.HttpContext.Current;
        hataMesaji += "\n\n Sayfa : " + myContext.Request.RawUrl;
        hataMesaji += "\n\n Hata Mesajı : " + ex.Message;
        hataMesaji += "\n\n Hat Kaynağı : " + ex.Source;
        string to = "mastermeric@gmail.com";
        string subject = "Hata Rapaoru";

        /* maili gonder */
        SendMail(to, subject, hataMesaji);         
    }
}
