<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registeritem.aspx.cs" Inherits="_Registeritem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        function checkAll() {
            // איפוס כל הודעות השגיאה בגישה ישירה ל-ID
            itemNameerror.innerHTML = "";
            textarea1error.innerHTML = "";
            itemCounterror.innerHTML = "";
            itemPriceerror.innerHTML = "";

            var f = true;

            // הרצת כל הבדיקות - הסדר חשוב כדי שכל השגיאות יוצגו בבת אחת
            f = checkItemName() && f;
            f = checkItemDescription() && f;
            f = checkItemCount() && f;
            f = checkItemPrice() && f;

            return f; // אם f נשאר true הטופס יישלח, אחרת הוא ייעצר
        }

        function checkItemName() {
            var name = document.getElementById("itemName").value;
            if (name.length < 3 || name.length > 50) {
                itemNameerror.innerHTML = "שם הפריט חייב להיות בין 3 ל-50 תווים";
                return false;
            }
            return true;
        }

        function checkItemDescription() {
            var desc = document.getElementById("textarea1").value;

            if (desc.length < 20) {
                textarea1error.innerHTML = "התיאור חייב להכיל לפחות 20 תווים";
                return false;
            }

            else if (desc.length > 200) {
                textarea1error.innerHTML = "התיאור ארוך מדי (מקסימום 200 תווים)";
                return false;
            }

            return true;
        }

        function checkItemCount() {
            var count = document.getElementById("itemCount").value;
            if (count === "") {
                itemCounterror.innerHTML = "חובה להזין כמות";
                return false;
            }
            else if (count >= 100) {
                itemCounterror.innerHTML = "יותר מידי פרטים!";
                return false;
            }
            return true;
        }

        function checkItemPrice() {
            var price = document.getElementById("itemPrice").value;
            if (price == "") {
                itemPriceerror.innerHTML = "חובה להזין מחיר";
                return false;
            }
            return true;
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