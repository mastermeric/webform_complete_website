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

public partial class TCPMesajlasma : System.Web.UI.Page
{ 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        soket.BAGLANTI_DURUMU = false;                        

        if (!soket.BAGLANTI_DURUMU)
        {
                soket.serverEndPoint = new IPEndPoint(IPAddress.Parse(TextBox1.Text), Convert.ToInt32(TextBox2.Text));
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
    protected void Button4_Click(object sender, EventArgs e)
    {
        IPHostEntry hostinfo = Dns.GetHostEntry(TextBox4.Text); // DynDns  name 
        soket.BAGLANTI_DURUMU = false;        
        
        // 1-)  IP adresi ile baglan
        //soket.serverEndPoint = new IPEndPoint(IPAddress.Parse(TextBox1.Text), Convert.ToInt32(TextBox2.Text));

        // 2-)  Hostname ile baglan        
        //soket.serverEndPoint = new IPEndPoint(IPAddress.Parse(TextBox1.Text), Convert.ToInt32(TextBox2.Text));

        if (!soket.BAGLANTI_DURUMU)
        {
            foreach (IPAddress adres in hostinfo.AddressList)
            {
                soket.serverEndPoint = new IPEndPoint(adres, Convert.ToInt32(TextBox2.Text));
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
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        ListBox1.Items.Clear();
    }
}
