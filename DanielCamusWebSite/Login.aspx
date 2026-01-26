<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form method="post" runat="server">
        <hr/>
        אימייל <input type="email" name="anEmail">
    <hr />

    <input type="password" name="password1">
    <hr />
        <input type="reset" name="reset1" value="reset">
        <input type="submit" name="thesender" value="submit">   
</form>
    <%=strResult %>
</asp:Content>

