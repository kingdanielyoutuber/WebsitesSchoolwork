<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShowMembers.aspx.cs" Inherits="ShowMembers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <hi1> טבלת משתמשים</hi1>
    <form runat="server" method="post">
        name: <input type="text" name="firstname">
        familiyname: <input type="text" name="lastname">
        <input type="reset" name="reset1" value="reset">
        <input type="submit" name="thesender" value="submit">   
    </form>
    <br />
    <%=st %>
</asp:Content>

