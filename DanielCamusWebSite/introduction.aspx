<%@ Page Title="Home - Randomliertems" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="introduction.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        /* CSS בסיסי מאוד שקל להסביר */
        .homeBody {
            font-family: Arial;
            text-align: center;
            padding: 20px;
        }
        .visionBox {
            border: 2px solid navy;
            padding: 15px;
            margin: 20px;
            background-color: #f0f8ff;
            direction: rtl; /* יישור לימין בשביל העברית */
        }
        .randomTitle {
            color: maroon;
            font-size: 40px;
            text-decoration: underline;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="homeBody">
        
        <h1 class="randomTitle">Randomliertems 🎲</h1>
        <h3>ברוכים הבאים לאתר הרנדומלי ביותר ברשת!</h3>

        <hr />

        <div class="visionBox">
            <h2>למה Randomliertems? (החזון שלי)</h2>
            <p>
                האתר <b>Randomliertems</b> (או בקיצור Random-items) הוקם כי נמאס לי שכל האתרים באינטרנט מראים לנו תמיד את אותו הדבר. 
                החלטתי ליצור מקום שבו הכל משתנה כל הזמן. 
                <br /><br />
                <b>מה תמצאו אצלי?</b>
                <br />
                בכל שבוע אני מעלה לאתר פריטים רנדומליים לגמרי (Items). 
                זה יכול להיות מידע על פירות כמו בננות ותפוחים, זה יכול להיות סושי טעים, וזה יכול להיות אפילו ציוד גיימינג לפורטנייט או בראול-סטארס. 
                אני מאמין שהחיים צריכים להיות הפתעה אחת גדולה!
            </p>
        </div>

        <div style="direction: rtl; text-align: right; display: inline-block;">
            <h3>מה אפשר לעשות פה?</h3>
            <ul>
                <li>להירשם למערכת בטופס ה-Register שלי.</li>
                <li>לראות אילו מוצרים אקראיים המנהלים הוסיפו ב-Showitems.</li>
                <li>ליהנות ממידע חדש בכל פעם שנכנסים!</li>
            </ul>
        </div>

        <br /><br />
        
        
        <p style="font-weight: bold; color: blue;">
            אז למה אתם מחכים? לכו להירשם ותתחילו לקבל פריטים רנדומליים!
        </p>
        <img src="https://cdn.searchenginejournal.com/wp-content/uploads/2025/02/img_2025-02-10-133404-633-1440x810.jpg" width="250" height="300"/>

    </div>
</asp:Content>