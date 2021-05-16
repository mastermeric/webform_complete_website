<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="b2b_demo.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link href="css/b2b_TabMenuStil.css" rel="stylesheet" type="text/css" />
    <link href="css/b2b_mainStil.css" rel="stylesheet" type="text/css" />
    <link href="css/b2b_GridStyle.css" rel="stylesheet" type="text/css" />    
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 322px;
        }
        .style3
        {
            width: 137px;
        }
        .style5
        {
            width: 102px;
        }
        .style6
        {
            width: 159px;
        }
        .style7
        {
            text-align: center;
        }
        .style8
        {
            width: 68px;
        }
        .style9
        {
            width: 265px;
        }
        .style12
        {
            height: 20px;
            width: 53px;
        }
        .style13
        {
            height: 20px;
            width: 72px;
        }
        .style14
        {
            height: 20px;
            width: 150px;
        }
        </style>

    
</head>
<body class="center">
    <form id="form1" runat="server">
    <div class="header">
    <div class="headerText">NTS OTO - B2B SAYFASI</div>
        </div>
    <div>
    <table align="center" style="width: 100%">
      <tr>
        <td>
          <asp:Button Text="Ürün Arama" BorderStyle="None" ID="Tab1" CssClass="Initial" runat="server"
              OnClick="Tab1_Click" />
          <asp:Button Text="Sipariş Sepeti" BorderStyle="None" ID="Tab2" CssClass="Initial" runat="server"
              OnClick="Tab2_Click" />
          <asp:Button Text="Sipariş Durumları" BorderStyle="None" ID="Tab3" CssClass="Initial" runat="server"
              OnClick="Tab3_Click" />
              
              <asp:Button Text="Cari Hesap" BorderStyle="None" ID="Tab4" CssClass="Initial" runat="server"
              OnClick="Tab4_Click" />
              <asp:Button Text="Extra" BorderStyle="None" ID="Tab5" CssClass="Initial" runat="server"
              OnClick="Tab5_Click" />                            
          <asp:MultiView ID="MainView" runat="server">
            <asp:View ID="View1" runat="server">
            
               <div class="View1MainCss">
                  <div class="View1Header">
                  <table class="style1">
                            <tr>
                                <td class="style3">
                                    <asp:Label CssClass="labelGenel" ID="Label1" runat="server" Text="Ürün Kodu"></asp:Label>
                                </td>
                                <td class="style2" colspan="2">
                                    <asp:TextBox ID="txtUrunKodu" runat="server" Height="20px" Width="150px"></asp:TextBox>
                                </td>
                                <td class="style5">
                                    <asp:Label  CssClass="labelGenel" ID="Label5" runat="server" Text="OEM No:"></asp:Label>
                                </td>
                                <td class="style6">
                                    <asp:TextBox ID="txtOemNo" runat="server" Height="20px" Width="150px"></asp:TextBox>
                                </td>
                                <td class="style7" rowspan="4">
                                <h1 style="font-family:Courier New">ŞİRKET <br /> LOGOSU</h1>
                                    </td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    <asp:Label  CssClass="labelGenel"  ID="Label2" runat="server" Text="Ürün Adı"></asp:Label>
                                </td>
                                <td class="style2" colspan="2">
                                    <asp:TextBox ID="txtUrunAdi" runat="server" Height="20px" Width="150px"></asp:TextBox>
                                </td>
                                <td class="style5">
                                    <asp:Label  CssClass="labelGenel"  ID="Label6" runat="server" 
                                        Text="Araç Marka:"></asp:Label>
                                </td>
                                <td class="style6">
                                    <asp:DropDownList ID="drpMarka" runat="server" Height="25px" Width="153px">
                                        <asp:ListItem>...</asp:ListItem>
                                        <asp:ListItem>AUDI</asp:ListItem>
                                        <asp:ListItem>BMW</asp:ListItem>
                                        <asp:ListItem>CHEVROLET-1</asp:ListItem>
                                        <asp:ListItem>CHEVROLET-2</asp:ListItem>
                                        <asp:ListItem>CITROEN</asp:ListItem>
                                        <asp:ListItem>DACIA</asp:ListItem>
                                        <asp:ListItem>OPEL</asp:ListItem>
                                        <asp:ListItem>MAZDA</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    <asp:Label  CssClass="labelGenel"  ID="Label3" runat="server" Text="Üretici"></asp:Label>
                                </td>
                                <td class="style2" colspan="2">
                                    <asp:DropDownList ID="drpUretici" runat="server" Height="25px" Width="153px">
                                        <asp:ListItem>...</asp:ListItem>
                                        <asp:ListItem>AK OTO</asp:ListItem>
                                        <asp:ListItem>APAYDINLAR</asp:ListItem>
                                        <asp:ListItem>CAN OTOMOTİV</asp:ListItem>
                                        <asp:ListItem>HİDROFİLT</asp:ListItem>
                                        <asp:ListItem>FAHLER</asp:ListItem>
                                        <asp:ListItem>ÖZKAN OTO</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="style5">
                                    &nbsp;</td>
                                <td class="style6">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    <asp:Label  CssClass="labelGenel"  ID="Label4" runat="server" 
                                        Text="Genel Arama" Font-Bold="True"></asp:Label>
                                </td>
                                <td class="style9">
                                    <asp:TextBox ID="txtGenelArama" runat="server" Height="20px" Width="250px"></asp:TextBox>
                                </td>
                                <td class="style8">
                                    <asp:Button ID="btnAra" runat="server" onclick="btnAra_Click" Text="ARA !" />
                                </td>
                                <td class="style5">
                                    &nbsp;</td>
                                <td class="style6">
                                    &nbsp;</td>
                            </tr>
                        </table>
                  </div>
                  
                  <div class="View1Content">                  
                      <br />
                      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                            GridLines="None"
                            AllowPaging="True"
                            CssClass="mGrid"
                            PagerStyle-CssClass="pgr"
                            AlternatingRowStyle-CssClass="alt" onrowcommand="GridView1_RowCommand1">
                          <Columns>
                              <asp:TemplateField HeaderText="Stok Durum..">
                            <ItemTemplate>
                            <asp:ImageButton ID="img" runat="server" Width="20px" Height="20px" 
                            ImageUrl='<%# GetStokDurumImage(Eval("StokAdet"),Eval("UrunOzelDurumu"))%>' />
                            </ItemTemplate>
                            </asp:TemplateField>                              
                              <asp:BoundField DataField="StokAdet" HeaderText="Stok Adet" />
                              <asp:BoundField DataField="UrunAdi" HeaderText="Ürün Adı" />
                              <asp:BoundField DataField="StokKodu" HeaderText="Stok Kod" />
                              <asp:BoundField DataField="OemKodu" HeaderText="OEM kod" />
                              <asp:BoundField DataField="OrjinalFiyat" HeaderText="Orjinal Fiyat" />
                              <asp:BoundField DataField="OrjinalKdvliFiyat" HeaderText="Orjinal kdv'li Fiyat" />
                              <asp:BoundField DataField="Kdv" HeaderText="KDV (%)" />
                              <asp:BoundField DataField="Iskonto" HeaderText="İskonto" />
                              <asp:BoundField DataField="NetFiyat" HeaderText="Net Fiyat" />
                              <asp:CommandField SelectText="Sepete Ekle" ShowSelectButton="True" />
                          </Columns>
                          <PagerStyle CssClass="pgr" />
                          <AlternatingRowStyle CssClass="alt" />
                      </asp:GridView>
                  </div>
                  
                  
                  <div class="View1Footer">
                  
                     <table>
                          <tr>
                          <td> <p class=standartBold>Stok Durumları :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p></td>
                          
                 
                              <td class="cellIcon">
                                  <asp:Image ID="Image1" runat="server"  
                                      ImageUrl="~/resimler/var.png" Width="20px" Height="20px" />
                              </td>
                              <td class="style12">
                                  <p class="standart">Var</p>
                              </td>
                       
                              
                              
                                  <td class="cellIcon">
                                      <asp:Image ID="Image2" runat="server" Height="20px" 
                                          ImageUrl="~/resimler/azVar.png" Width="20px" />
                                  </td>
                                  <td class="style13">
                                      <p class="standart">
                                          Az Var</p>
                                  </td>
                  
                              
                              
                           
                              <td class="cellIcon">
                                  <asp:Image ID="Image3" runat="server" 
                                      ImageUrl="~/resimler/yok.png" Width="20px"  Height="20px" />
                              </td>
                              <td class="style13">
                                  <p class="standart">Yok</p>
                              </td>
                 
                              
                              
                         
                              <td class="cellIcon">
                                  <asp:Image ID="Image4" runat="server"
                                      ImageUrl="~/resimler/siparisUzerine.png" Width="20px"  Height="20px" />
                              </td>                                                            
                              <td class="style14">
                                  <p class="standart">Siparişe göre</p>
                              </td>
            
                              
                              
                              <td class="style4">                                  
                                  &nbsp;</td>
                              <td>
                                  <asp:Button ID="Button1" runat="server" Text="Excel İndir" />
                              </td>
                          </tr>
                      </table>
    
                  </div>
                  
                  </div>
                        
                      
                    
                      
    
            </asp:View>
            <asp:View ID="View2" runat="server">
            <div class="View2MainCss">
                <h2>Sipariş Sepeti..</h2>
                <br />
                <br />
                <h3>Datalara erişim yok..  İçerik hazırlanıyor..</h3>                
              </div>
            </asp:View>
            
            <asp:View ID="View3" runat="server">
            <div class="View3MainCss">
              <h2>Siparişlerin Durumu</h2>
              <br />
                <br />
                <h3>Datalara erişim yok..  İçerik hazırlanıyor..</h3>
              </div>
            </asp:View>
            
            
             <asp:View ID="View4" runat="server">
            <div class="View3MainCss">
              <h2>Cari Hesap</h2>
              <br />
                <br />
                <h3>Datalara erişim yok..  İçerik hazırlanıyor..</h3>
              </div>
            </asp:View>
            
            
             <asp:View ID="View5" runat="server">
            <div class="View3MainCss">
              <h2>EXTRA...</h2>
              <br />
                <br />
                <h3>Datalara erişim yok..  İçerik hazırlanıyor..</h3>
              </div>
            </asp:View>
            
            
            
          </asp:MultiView>
        </td>
      </tr>
    </table>
    </div>
    </form>
</body>
</html>
