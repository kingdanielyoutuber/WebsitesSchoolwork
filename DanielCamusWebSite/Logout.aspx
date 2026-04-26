<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script language="javascript">
    function cheackAll() {
        //.......
        return true;
    }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <% Session.Abandon();
    //Response.Write("התנתקת");
    Response.Redirect("login.aspx");
    %>
</asp:Content>

