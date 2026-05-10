<%@ Page Title="ניהול משתמשים" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShowMembers.aspx.cs" Inherits="ShowMembers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        table { border-collapse: collapse; width: 100%; direction: rtl; background-color: #a2ffd7; margin-top: 20px; }
        th, td { border: 1px solid black; padding: 8px; text-align: center; }
        th { background-color: #f2f2f2; font-weight: bold; } 
        .search-area { text-align: center; margin-bottom: 20px; direction: rtl; padding: 15px; background-color: #f9f9f9; border-bottom: 2px solid #ccc; }
        h1 { text-align: center; color: #333; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>טבלת משתמשים</h1>

    <div class="search-area">
        <form runat="server" method="post">
            שם פרטי: <input type="text" name="firstname">
            שם משפחה: <input type="text" name="lastname">
            <input type="reset" name="reset1" value="reset">
            <input type="submit" name="thesender" value="submit">   
        </form>
    </div>

    <div style="width: 100%; overflow-x: auto;">
        <%=st %>
    </div>
</asp:Content>