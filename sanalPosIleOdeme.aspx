<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sanalPosIleOdeme.aspx.cs" Inherits="sanalPosIleOdeme" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <div>
        <asp:Label ID="lblSonuc" runat="server" BackColor="#FFFFCC"></asp:Label>
        <h2>
            Kredi kartı ödeme bilgileri</h2>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label">Ödenecek miktar</asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="kkmiktar" runat="server" Columns="5" MaxLength="10" 
                ReadOnly="True" Height="22px" Width="76px"></asp:TextBox>
            <asp:DropDownList ID="kkcekim" runat="server">
                <asp:ListItem Text="Tek çekim" Value="1"></asp:ListItem>
                <asp:ListItem Text="6 taksit" Value="6"></asp:ListItem>
                <asp:ListItem Text="12 taksit" Value="12"></asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Label">Kart sahibi</asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="kksahip" runat="server" Columns="50"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Label">Kart no / CVC no</asp:Label>
&nbsp;
            <asp:TextBox ID="kknum" runat="server" Columns="20" MaxLength="16"></asp:TextBox>
            /
            <asp:TextBox ID="kkcvc" runat="server" Columns="4" MaxLength="3"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Label">Son kullanma tarihi</asp:Label>
&nbsp;
            <asp:DropDownList ID="kkay" runat="server">
                <asp:ListItem Text="1" Value="1"></asp:ListItem>
                <asp:ListItem Text="2" Value="2"></asp:ListItem>
                <asp:ListItem Text="3" Value="3"></asp:ListItem>
                <asp:ListItem Text="4" Value="4"></asp:ListItem>
                <asp:ListItem Text="5" Value="5"></asp:ListItem>
                <asp:ListItem Text="6" Value="6"></asp:ListItem>
                <asp:ListItem Text="7" Value="7"></asp:ListItem>
                <asp:ListItem Text="8" Value="8"></asp:ListItem>
                <asp:ListItem Text="9" Value="9"></asp:ListItem>
                <asp:ListItem Text="10" Value="10"></asp:ListItem>
                <asp:ListItem Text="11" Value="11"></asp:ListItem>
                <asp:ListItem Text="12" Value="12"></asp:ListItem>
            </asp:DropDownList>
            /
            <asp:DropDownList ID="kkyil" runat="server">
                <asp:ListItem Text="2010" Value="2010"></asp:ListItem>
                <asp:ListItem Text="2011" Value="2011"></asp:ListItem>
                <asp:ListItem Text="2012" Value="2012"></asp:ListItem>
                <asp:ListItem Text="2013" Value="2013"></asp:ListItem>
                <asp:ListItem Text="2014" Value="2014"></asp:ListItem>
                <asp:ListItem Text="2015" Value="2015"></asp:ListItem>
                <asp:ListItem Text="2016" Value="2016"></asp:ListItem>
                <asp:ListItem Text="2017" Value="2017"></asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="kksubmit" runat="server" onclick="kksubmit_Click" 
                Text="Ödeme yap" />
        </p>
    </div>
    <p>
        &nbsp;</p>
    <p>
    
        <asp:Label ID="lblPOSMesajBilgi" runat="server" Font-Bold="True" 
            BackColor="#CCFFFF"></asp:Label>
    
    </p>
    </form>
</body>
</html>
