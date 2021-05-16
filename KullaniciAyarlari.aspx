<%@ Page Language="C#" AutoEventWireup="true" CodeFile="KullaniciAyarlari.aspx.cs" Inherits="KullaniciAyarlari" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        #form1
        {
            height: 494px;
        }
        .style1
        {
            width: 45%;
            height: 147px;
        }
        .style2
        {
            width: 109px;
        }
        .style3
        {
            width: 146px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
        PostBackUrl="~/yoneticiPaneli.aspx">Yönetici Paneli...</asp:LinkButton>
        
        
        <asp:Panel ID="Panel2" runat="server">
        <h3>Kullanıcı ayarları ile Yapabilecekleriniz:</h3>
        <p>* Yeni bir Kullanıcı tanımlamak...</p>
        <p>* Mevcut bir kullanıcıyı silmek...</p>
        <p>* Kullanıcılara ait bilgileri güncellemek..</p>
        <p>* Kullanıcı yetkilerini sınırlamak..</p>
        <p>  Ve daha fazla pek çok tanımlama yapılabilir..</p>        
        </asp:Panel>
    
        
    <div style="height: 220px">
    
        <asp:Button ID="Button1" runat="server" Height="26px" onclick="Button1_Click" 
            Text="Kullanıcıları Getir" Width="171px" />
        <asp:GridView ID="GridView1" runat="server" Height="156px" 
            onrowcommand="GridView1_RowCommand" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" Width="935px">
            <Columns>
                <asp:CommandField ButtonType="Button" SelectText="Kullanıcı Güncelle" 
                    ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <br />
    
    </div>
    
    <br />
    <asp:Panel ID="Panel1" runat="server" Height="192px" Visible="False" 
        Width="942px">
        &nbsp;
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="User Kodu"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtUSerKodu" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                        Text="Güncelle" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Text="İsim"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtIsim" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                        Text="Güncelle" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Text="Soyisim"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtSoyisim" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                        Text="Güncelle" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label4" runat="server" Text="Yetki"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtYetki" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
                        Text="Güncelle" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtPAssword" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button6" runat="server" onclick="Button6_Click" 
                        Text="Güncelle" />
                </td>
            </tr>
        </table>
        <br />
    </asp:Panel>
    </form>
</body>
</html>
