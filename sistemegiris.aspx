<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sistemegiris.aspx.cs" Inherits="sistemegiris" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
          <div class="left_block">            	
                <form id="newsletter">
                <%--<input type="text" name="" class="newsletter_input" />--%>                
                <%--<input type="submit" name="" class="newsletter_submit" value="Giriş" />--%>     
                <div class="yoneticiGiris">
                <h2>Yönetici Girişi</h2>
                <p>Site yöneticileri için hızlı erişim aracı</p>
                <div>
                <asp:Label class="lblStil" ID="lblYoneticiUser" runat="server" Text="Kullanıcı :"></asp:Label>
                <asp:TextBox class="textboxGenelStil" ID="txtYoneticiUser" runat="server" ></asp:TextBox>
                </div>                
                <div>
                <asp:Label class="lblStil" ID="lblYoneticiPassword" runat="server" Text="Şifre :"></asp:Label>
                <asp:TextBox class="textboxGenelStil" ID="txtYoneticiPassword" runat="server" 
                        TextMode="Password"></asp:TextBox>
                </div>
                <div>
                <asp:LinkButton  class="butonStil" ID="LinkButton1" runat="server" 
                        onclick="LinkButton1_Click">&nbsp;&nbsp;GİRİŞ&nbsp;&nbsp;</asp:LinkButton>
                </div>                
                </div>           
                </form>
            </div>
</asp:Content>

