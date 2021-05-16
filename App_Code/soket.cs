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
using System.Net.Sockets;
using System.Text;

public  class soket
{ 
    public static TcpClient client
    {
        get;
        set;
    }
    public static IPEndPoint serverEndPoint
    {
        get;
        set;
    }

    public static NetworkStream clientStream
    {
        get;
        set;
    }
    public static ASCIIEncoding encoder
    {
        get;
        set;
    }
    public static bool BAGLANTI_DURUMU
    {
        get;
        set;
    }
}
