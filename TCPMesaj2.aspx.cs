using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;

public partial class TCPMesaj2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        soket.BAGLANTI_DURUMU = false;
        soket.serverEndPoint = new IPEndPoint(IPAddress.Parse(TextBox1.Text), Convert.ToInt32(TextBox2.Text));

        if (!soket.BAGLANTI_DURUMU)
        {
            try
            {
                //client.Connect(serverEndPoint);                
                soket.client = new TcpClient();
                soket.client.Connect(soket.serverEndPoint);
                if (soket.client.Connected)
                {
                    ListBox1.Items.Add("BAĞLANTI SAĞLANDI...");
                    soket.BAGLANTI_DURUMU = true;
                }
            }
            catch (Exception ex)
            {
                ListBox1.Items.Add("HATA Oluştu !");
                ListBox1.Items.Add(ex.Message);
            }
        }
        else
        {
            ListBox1.Items.Add("BAĞLANTI ZATEN AÇIK !!!");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            soket.client.Close();
            ListBox1.Items.Add("BAĞLANTI KAPATILDI...");
            soket.BAGLANTI_DURUMU = false;
        }
        catch (Exception ex)
        {
            ListBox1.Items.Add("HATA Oluştu  !!!");
            ListBox1.Items.Add(ex.Message);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (soket.BAGLANTI_DURUMU)
        {
            soket.clientStream = soket.client.GetStream();
            soket.encoder = new ASCIIEncoding();
            byte[] buffer = soket.encoder.GetBytes(TextBox3.Text);
            soket.clientStream.Write(buffer, 0, buffer.Length);
            soket.clientStream.Flush();
        }
        else
        {
            ListBox1.Items.Add("SUNUCUYA BAĞLANTI YOK !!! ");
        }
    }
}
