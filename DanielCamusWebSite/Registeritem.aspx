<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registeritem.aspx.cs" Inherits="_Registeritem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        function checkAll() {
            var isValid = true;
            
            // כאן תוסיף את הלוגיקה שלך שבוע הבא (איפוס הודעות ובדיקה)
            return isValid;
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form method="post" runat="server" onsubmit="return checkAll();">
        <div>
            itemName: <input type="text" name="itemName" id="itemName" /> 
            <span class="error" id="itemNameerror"></span> <br />

            itemDescription: <textarea rows="5" cols="20" name="textarea1" id="textarea1"></textarea>
            <span class="error" id="textarea1error"></span>
            <hr/>

            itemCount: <input type="number" name="itemCount" id="itemCount" /> 
            <span class="error" id="itemCounterror"></span> <br />

            itemPrice: <input type="number" name="itemPrice" id="itemPrice" /> 
            <span class="error" id="itemPriceerror"></span> <br />

            <hr />
            <input type="reset" value="reset">
            <input type="submit" name="thesender" value="submit">
        </div>
    </form>

    <%-- הצגת הודעת הצלחה או שגיאה מהשרת --%>
    <div style="margin-top:20px; font-weight:bold; color:navy;">
        <%=st %>
    </div>
</asp:Content>