<%@ Page Title="ניהול משתמשים" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShowMembers.aspx.cs" Inherits="ShowMembers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        /* עיצוב הטבלה - בדיוק כמו בלוח הכפל */
        table {
            border: 2px solid yellow;
            width: 70%;
            margin: 20px auto;
            border-collapse: separate; 
            direction: rtl; /* בשביל שהטבלה תתחיל מימין לשמאל בעברית */
        }
        
        th, td {
            border: 2px solid #333;
            background-color: #0683f1;
            padding: 8px;
            text-align: center;
        }
        
        /* שורת הכותרת של הטבלה תהיה בלבן */
        tr.topRow {
            color: white; 
        }
        
        /* עיצוב סופר פשוט לאזור החיפוש */
        .searchBox {
            text-align: center;
            margin: 20px auto;
            direction: rtl;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <h2 style="text-align:center;">טבלת משתמשים</h2>

    <div class="searchBox">
        <form runat="server" method="post">
            שם פרטי: <input type="text" name="firstname">
            שם משפחה: <input type="text" name="lastname">
            <input type="reset" name="reset1" value="reset">
            <input type="submit" name="thesender" value="submit">   
        </form>
    </div>

    <div>
        <%=st %>
    </div>

</asp:Content>