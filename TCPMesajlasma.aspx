<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TCPMesajlasma.aspx.cs" Inherits="TCPMesajlasma" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 219px;
        }
        .style3
        {
            width: 601px;
        }
        .style4
        {
            width: 718px;
        }
        .style5
        {
            width: 150px;
            height: 37px;
        }
        .style6
        {
            width: 204px;
            height: 37px;
        }
        .style7
        {
            width: 219px;
            height: 37px;
        }
        .style8
        {
            width: 294px;
            height: 37px;
        }
        .style9
        {
            width: 601px;
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table class="style1">
        <tr>
            <td class="style7">
                <asp:Label ID="Label1" runat="server" Text="IP Adresi"></asp:Label>
            </td>
            <td class="style6">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style5">
                <asp:Label ID="Label5" runat="server" Text="Host name"></asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="TextBox4" runat="server" Height="23px" Width="198px">uzmanserver.dnsdynamic.com</asp:TextBox>
            </td>
            <td class="style9">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="BAĞLAN (IP)" Height="26px" Width="96px" />
            &nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" Height="28px" onclick="Button4_Click" 
                    Text="BAĞLAN (hostname)" Width="151px" />
            </td>
        </tr>
        <tr>
            <td class="style2">
            <asp:Label ID="Label2" runat="server" Text="PORT:"></asp:Label>
            </td>
            <td class="style4" colspan="3">
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
            <td class="style4" colspan="3">
                <asp:TextBox ID="TextBox3" runat="server" Height="23px" Width="591px"></asp:TextBox>
            </td>
            <td class="style3">
    
    
    
    <asp:Button ID="Button1" runat="server" Text="TCP Mesaj Gönder" Height="24px" 
                    onclick="Button1_Click" Width="171px" />
            </td>
        </tr>
        <tr>
            <td class="style2">
            <asp:Label ID="Label4" runat="server" Text="GELEN MESAJ..."></asp:Label>
            </td>
            <td class="style4" colspan="3">
    
    
    
                <asp:ListBox ID="ListBox1" runat="server" Height="155px" Width="599px">
                </asp:ListBox>
                <br />
                <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="SİL" />
            </td>
            <td class="style3">
    
    
    
                &nbsp;</td>
        </tr>
    </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
</asp:Content>

