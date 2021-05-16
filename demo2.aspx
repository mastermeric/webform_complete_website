<%@ Page Language="C#" AutoEventWireup="true" CodeFile="demo2.aspx.cs" Inherits="demo2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link href="MasterPageStil.css" rel="stylesheet" type="text/css" />
    <link href="css/b2b_GridStyle.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Button ID="Button2" runat="server" Text="DEMO'dan ÇIKIŞ ..." 
        Font-Bold="True" ForeColor="Red" onclick="Button2_Click" />
 <div id="MainDiv" style="height: 889px; width: 1127px">    
    <div id="DivHeader" style="height: 128px; width: 1213px">
        <div style="height: 109px; width: 233px; float:left;">
        <br />
        <h1>Site LOGOSU !</h1>
        </div>
    <div style="height: 108px; width: 915px">
    </div>
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
    <div id="DivContent" style="height: 617px; width: 595px">   
    
    <asp:GridView ID="GridView4" runat="server" 
    AutoGenerateColumns="False" 
        GridLines="None"
        AllowPaging="True"
        CssClass="mGrid"
        PagerStyle-CssClass="pgr"
        AlternatingRowStyle-CssClass="alt"
                            
    onrowcommand="GridView4_RowCommand" 
    AllowSorting="True" 
    DataKeyNames="AnaUrunID">
    <Columns>
        <asp:BoundField DataField="AnaUrunIsmi" HeaderText="Ürünler" >
            <HeaderStyle HorizontalAlign="Left" />
        </asp:BoundField>
        <asp:BoundField DataField="AnaUrunFiyat" DataFormatString="{0:C}" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:TextBox ID="txtAdet" runat="server" Height="21px" Width="24px"></asp:TextBox>
                <br />
                <asp:Label ID="lblAdet" runat="server" Text="Adet"></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:CommandField ButtonType="Button" SelectText="Sepete Ekle" 
            ShowSelectButton="True" />
    </Columns>
    
    <PagerStyle CssClass="pgr" />
    <AlternatingRowStyle CssClass="alt" />
                          
</asp:GridView>

    &nbsp;
    
        <asp:Label ID="lblAnasayfaMesaj" runat="server"></asp:Label>
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" width="50%" height="50%" />
    
    </div>    
    
<div id="DivSagMenu" > 
    <div>    
        <asp:TextBox ID="txtYoneticiUser" runat="server" 
        onFocus="this.value=''" onblur="if(this.value=='')this.value=this.defaultValue"
        value="Kullanıcı Adı">
        </asp:TextBox>
        <br />
        <asp:TextBox ID="txtYoneticiPassword" runat="server"
        onFocus="this.value=''" onblur="if(this.value=='')this.value=this.defaultValue"
        value="Şifre" TextMode="Password">Şifre</asp:TextBox>
        <br />
        <asp:Button ID="btnYoneticiGiris" runat="server" Text="Button" 
            onclick="btnYoneticiGiris_Click" />
    </div>
    
    <br />
    <asp:Label ID="lblSepet" runat="server"></asp:Label>
    <br />
    <div style="width: 271px; float:left; height: 219px;">
        <asp:GridView ID="grdSepet1" runat="server" 
            onrowdatabound="grdSepet1_RowDataBound" CellPadding="4" 
            ForeColor="#333333" GridLines="None" ShowFooter="True" DataKeyNames="Id" 
            onrowdeleting="grdSepet1_RowDeleting" Width="259px">
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <Columns>
                <asp:CommandField DeleteText="Kaldır" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Left" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
       
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Satın Al" />
        <br />
       
</div>
        </div>     
         
            <div id="DivFooter" style="height: 119px; width: 1103px" class="style1"> 
        <br />
        <br />
                <br />
                ______&nbsp;&nbsp;&nbsp; Şirket Bilgileri&nbsp;&nbsp;&nbsp; ______<br />
                ________________________________________<br />
                İletişim Sayfası,&nbsp; Bize&nbsp; Ulaşın..&nbsp;&nbsp; Tel:0.212.123.4567&nbsp;&nbsp; Fax:0.212.123.0012</div>
         
            </div>
         
        
    </form>
</body>
</html>
