<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registeritem.aspx.cs" Inherits="_Registeritem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form method="post" runat="server">
        <div>
            itemName: <input type="text" name="itemName" required /> <br />
            itemDescription: <textarea rows="5" cols="20" name="textarea1"></textarea>
            <hr/>
            itemCount: <input type="number" name="itemCount" /> <br />
            itemPrice: <input type="number" name="itemPrice" /> <br />
            <hr />
            <input type="reset" value="reset">
            <input type="submit" name="thesender" value="submit">
        </div>
    </form>

    <%-- הצגת הודעת הצלחה או שגיאה --%>
    <div style="margin-top:20px; font-weight:bold; color:navy;">
        <%=st %>
    </div>
</asp:Content>