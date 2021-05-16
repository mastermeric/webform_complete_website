<%@ Page Language="C#" AutoEventWireup="true" CodeFile="demoGiris.aspx.cs" Inherits="demoGiris" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link href="css/LoginPageStyle.css" rel="stylesheet" type="text/css" />
    
    <style type="text/css">
        .style1
        {
            width: 115%;
            height: 456px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 505px">
    
        <table class="style1">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                
                
                <div class="login">
      <h1>Bayi Giriş sayfası</h1>
        
        <p><asp:TextBox ID="TextBox1" runat="server" placeholder="kullanıcı adı yada email" ></asp:TextBox>  </p>
        <p><asp:TextBox ID="TextBox2" runat="server" placeholder="Şifre" 
                TextMode="Password"></asp:TextBox>  </p>
        
        <p class="remember_me">
        <label> <input type="checkbox" name="remember_me" id="remember_me">Beni bu bilgisayarda hatırla.</label>
        </p>
        
        <asp:Button CssClass="submit" ID="Button1" runat="server" Text="Button" onclick="Button1_Click"></asp:Button>
    </div>

    <div class="login-help">
      <p>Şifrenizi mi unuttunuz ? <a href="index.html">Buraya tıklayın</a>.</p>
    </div>
    
    
    
                    </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
