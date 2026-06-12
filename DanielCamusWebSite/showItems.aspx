<%@ Page Title="הצגת פריטים" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showItems.aspx.cs" Inherits="showItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        /* עיצוב הטבלה - בסיסי וזהה לשאר האתר */
        table {
            border: 2px solid yellow;
            width: 70%;
            margin: 20px auto;
            border-collapse: separate; 
            direction: rtl; 
        }
        
        th, td {
            border: 2px solid #333;
            background-color: #0683f1;
            padding: 8px;
            text-align: center;
        }
        
        /* שורת הכותרת העליונה בלבן */
        tr.topRow {
            color: white; 
        }
        
        /* אזור חיפוש נקי ופשוט */
        .searchBox {
            text-align: center;
            margin: 20px auto;
            direction: rtl;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <h2 style="text-align:center;">טבלת פריטים רנדומלים</h2>

    <div class="searchBox">
        <form method="post" runat="server">
            שם הפריט: <input type="text" name="itemNameSearch"> 
            מחיר עד: <input type="number" name="itemPriceSearch">
            <input type="reset" value="reset">
            <input type="submit" value="submit">
        </form>
    </div>

    <div>
        <%= st %>
    </div>

</asp:Content>