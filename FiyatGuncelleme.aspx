<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FiyatGuncelleme.aspx.cs" Inherits="FiyatGuncelleme" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 92%;
            height: 106px;
        }
        .style2
        {
            width: 80px;
        }
        .style3
        {
            width: 513px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
        PostBackUrl="~/yoneticiPaneli.aspx">Yönetici Paneli...</asp:LinkButton>
        
    <asp:Panel ID="Panel2" runat="server">
        <h3>Ürün-Fiyat Güncelleme Ekranı ile yapabilecekleriniz:</h3>
        <p>* Ürünlerin brim fiyatını güncellemek...</p>
        <p>* Ürünlere sabit yada değişken oranalrda toplu Zam/İndirim uygulamak..</p>
        <p>* Ürüne ait açıklama Eklemek/Silmek..</p>
        <p>* Ürünlerin İsmini değiştirmek..</p>        
        </asp:Panel>
    
    <div style="height: 557px; width: 956px">
    
        <asp:Button ID="Button1" runat="server" Height="30px" onclick="Button1_Click" 
            Text="Ürünleri Getir" Width="244px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:GridView ID="GridView1" runat="server" Height="175px" Width="883px" 
            onrowcommand="GridView1_RowCommand" onrowdeleting="GridView1_RowDeleting" 
            onrowediting="GridView1_RowEditing">
            <Columns>
                <asp:CommandField ButtonType="Button" SelectText="Ürün Güncelle " 
                    ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
    
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="317px" Width="796px" 
            Visible="False">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <table class="style1">
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label1" runat="server" Text="İsim: "></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="txtIsim" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnIsim" runat="server" onclick="btnIsim_Click" Text="Kaydet" />
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label2" runat="server" Text="Açıklama: "></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="txtAciklama" runat="server" Width="500px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnAciklama" runat="server" onclick="btnAciklama_Click" 
                            Text="Kaydet" />
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label3" runat="server" Text="Fiyat: "></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="txtFiyat" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnFiyat" runat="server" onclick="btnFiyat_Click" 
                            Text="Kaydet" />
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label4" runat="server" Text="Resim: "></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:TextBox ID="txtResim" runat="server" Width="170px"></asp:TextBox>
                        <asp:Button ID="Button2" runat="server" Height="22px" onclick="Button2_Click" 
                            Text="...." Width="27px" />
                    </td>
                    <td>
                        <asp:Button ID="btnResim" runat="server" Enabled="False" 
                            onclick="btnResim_Click" Text="Kaydet" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
