<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TCPMesaj2.aspx.cs" Inherits="TCPMesaj2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 219px;
        }
        .style4
        {
            width: 718px;
        }
        .style3
        {
            width: 601px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="IP Adresi"></asp:Label>
            </td>
            <td class="style4">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="style3">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="BAĞLAN" />
            </td>
        </tr>
        <tr>
            <td class="style2">
            <asp:Label ID="Label2" runat="server" Text="PORT:"></asp:Label>
            </td>
            <td class="style4">
    <asp:TextBox ID="TextBox2" runat="server">32000</asp:TextBox>
            </td>
            <td class="style3">
                <asp:Button ID="Button3" runat="server" Height="26px" onclick="Button3_Click" 
                    Text="STOP" Width="81px" />
            </td>
        </tr>
        <tr>
            <td class="style2">
            <asp:Label ID="Label3" runat="server" Text="Gönderilecek Mesaj:"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox3" runat="server" Height="23px" Width="591px"></asp:TextBox>
            </td>
            <td class="style3">
    
    
    
    <asp:Button ID="Button1" runat="server" Text="TCP Gönder" Height="24px" 
                    onclick="Button1_Click" Width="136px" />
            </td>
        </tr>
        <tr>
            <td class="style2">
            <asp:Label ID="Label4" runat="server" Text="GELEN MESAJ..."></asp:Label>
            </td>
            <td class="style4">
    
    
    
                <asp:ListBox ID="ListBox1" runat="server" Height="129px" Width="599px">
                </asp:ListBox>
            </td>
            <td class="style3">
    
    
    
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
