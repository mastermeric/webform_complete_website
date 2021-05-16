<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yoneticiPaneli.aspx.cs" Inherits="yoneticiPaneli" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        #form1
        {
            height: 675px;
            width: 972px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 150px; width: 965px">    
        <h3>Ürün-Fiyat Güncelleme Ekranı..</h3>
        Ürün Seçimi:<br />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="ElektronikUrunler">Elektronik Ürünler</asp:ListItem>
            <asp:ListItem Value="MekanikUrunler">Mekanik Ürünler</asp:ListItem>
            <asp:ListItem Value="HidrolikUrunler">Hidrolik Ürünler</asp:ListItem>
            <asp:ListItem Value="YeniUrunler">Yeni Ürünler</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Ürün Fiyat Güncelleme" Width="158px" />
        <br />
    </div>
    <div style="height: 111px; width: 968px">            
        <h3>Site Ayarları Ekranı..</h3>
        <asp:Button ID="Button2" runat="server" Height="25px" onclick="Button2_Click" 
            Text="Kullanıcı Ayarları" Width="152px" />
        <br />
        <br />
    </div>
    
    <div style="height: 94px; width: 974px">    
        <h3>SMS Ayarları Ekranı..</h3>
        <asp:Button ID="Button3" runat="server" Text="SMS Ayarları" Height="26px" 
            Width="153px" onclick="Button3_Click" />
        </div>
        
        <div>
        <h3>Toplu email/bülten Ekranı..</h3>
            <asp:Button ID="Button4" runat="server" Text="Toplu Email/Bülten" 
            Height="26px" Width="153px" Enabled="False" />
        </div>
        <div>
        <h3>Bayi Ciro/Stok takip Ekranı</h3>
            <asp:Button ID="Button5" runat="server" Text="Bayi/Ciro Takibi.." 
            Height="26px" Width="153px" Enabled="False" />
        </div>
        <div>
        <h3>Muhasebe Ekranı..</h3>
            <asp:Button ID="Button6" runat="server" Text="Muhasebe.." Height="26px" Width="153px" />
        </div>
    
    </form>
</body>
</html>
