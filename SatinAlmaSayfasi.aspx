<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SatinAlmaSayfasi.aspx.cs" Inherits="SatinAlmaSayfasi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link href="MasterPageStil.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="DivHeader" style="height: 128px; width: 1213px">
        <div style="height: 109px; width: 233px; float:left;">
        <br />
        <h1>Site LOGOSU !</h1>
        </div>
    <div style="height: 108px; width: 915px">
    </div>
    </div>
    <div>
    BURASI SATIN ALMA SAYFASI ...
    </div>
    
    
    
    <div id="DivSolMenu" style="height: 572px; width: 152px">
    <asp:LinkButton CssClass="ovalbuttonStyle" ID="LinkButton1" runat="server" onclick="LinkButton1_Click"><span>Elektroink Parça</span></asp:LinkButton>
    <br /><br />
    <asp:LinkButton CssClass="ovalbuttonStyle" ID="LinkButton2" runat="server" onclick="LinkButton2_Click"><span>Mekanik Parça</span></asp:LinkButton>
    <br /><br />
    <asp:LinkButton CssClass="ovalbuttonStyle" ID="LinkButton3" runat="server" onclick="LinkButton3_Click"><span>Hidrolik Ekipmanlar</span></asp:LinkButton>
    <br /><br />
    <asp:LinkButton CssClass="ovalbuttonStyle" ID="LinkButton4" runat="server" onclick="LinkButton4_Click"><span>Yeni Ürünler..</span></asp:LinkButton>
        <br />
        <br />
        <br />
        <br />      
        <br />
        <br />    
    </div>        
 <div id="DivContent" style="height: 617px; width: 520px"> 
     <asp:Label ID="lblSatinAlma" runat="server" Font-Bold="True"></asp:Label>
     <br />
     <br />
     <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" 
         Font-Underline="True" onclick="LinkButton5_Click" >Sanal POS ile ödeme</asp:LinkButton>
     <br />
     <img alt="" src="resimler/ePaymentLogo.GIF" 
         style="width: 120px; height: 34px" /><br />
     <br />
     <asp:LinkButton ID="LinkButton6" runat="server" Font-Bold="True" 
         Font-Underline="True" onclick="LinkButton6_Click">Havale ile ödeme</asp:LinkButton>
     <br />
     <img alt="" src="resimler/bankTransfer.jpg" style="width: 89px; height: 56px" /><br />
     <br />
     <asp:LinkButton ID="LinkButton7" runat="server" Font-Bold="True" 
         Font-Underline="True" onclick="LinkButton7_Click">PTT - Kapıda Ödeme</asp:LinkButton>
     <br />
     <img alt="" src="resimler/PTT_Kargo_Kapida_Odeme.jpg" 
         style="width: 66px; height: 59px" /><br />
     <br />
     <asp:LinkButton ID="LinkButton8" runat="server" Font-Bold="True" 
         Font-Underline="True" onclick="LinkButton8_Click">Sürat Kargo - Kapıda Ödeme</asp:LinkButton>
     <br />
     <img alt="" src="resimler/surat_kapida_odeme.png" 
         style="width: 72px; height: 83px" /></div>    
   
<div id="DivSagMenu" > 
</div>

         
            <div id="DivFooter" style="height: 86px; width: 1188px" class="style1"> 
        <br />
        <br />
                Şirket Bilgileri.     <br />
                İletişim Sayfası,&nbsp; Bize&nbsp; Ulaşın..&nbsp;&nbsp; Tel:0.212.123.4567 Fax:0.212.123.0012</div>
         
            </div>
    </form>
</body>
</html>
