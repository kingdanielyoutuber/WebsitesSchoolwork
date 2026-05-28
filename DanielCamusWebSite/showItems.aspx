<%@ Page Title="הצגת פריטים" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showItems.aspx.cs" Inherits="showItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        table { border-collapse: collapse; width: 100%; direction: rtl; background-color: #a2ffd7; } /* צבע רקע דומה לתמונה שלך */
        th, td { border: 1px solid black; padding: 8px; text-align: center; }
        .search-area { text-align: center; margin-bottom: 20px; direction: rtl; padding: 15px; background-color: #f9f9f9; border-bottom: 2px solid #ccc; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <h1>טבלת פריטים רנדומלים</h1>

    <div class="search-area">
        <form method="post" runat="server">
            שם הפריט: <input type="text" name="itemNameSearch"> 
            מחיר עד: <input type="number" name="itemPriceSearch">
            <input type="reset" value="reset">
            <input type="submit" value="submit">
        </form>
    </div>

    <div style="width: 100%; overflow-x: auto;">
        <%= st %>
    </div>

</asp:Content>