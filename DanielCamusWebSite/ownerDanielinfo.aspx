<%@ Page Title="קצת עליי" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ownerDanielinfo.aspx.cs" Inherits="ownerDanielinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        /* עיצוב הטבלה הבסיסי של האתר - בדיוק כמו בלוח הכפל */
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
            padding: 10px;
            text-align: center;
        }
        
        /* שורת הכותרת של הטבלה בלבן */
        tr.topRow {
            color: white; 
        }
        
        /* עיצוב בסיסי לתמונת הפרופיל */
        .profile-pic {
            display: block;
            margin: 20px auto;
            width: 150px;
            border: 2px solid black;
        }

        /* מירכוז פשוט לאזור הקישורים */
        .links-area {
            text-align: center;
            margin-top: 20px;
            direction: rtl;
        }

        /* עיצוב קישורים פשוט ורגיל לחלוטין */
        .links-area a {
            color: blue;
            font-weight: bold;
            margin: 0 15px;
            font-size: 1.1em;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <h2 style="text-align:center;">קצת עליי</h2>
    <p style="text-align:center;">ברוכים הבאים לאתר שלי!</p>
    
    <img src="https://static.vecteezy.com/system/resources/thumbnails/066/074/459/small/a-person-wearing-a-hoodie-in-front-of-a-circular-hole-free-photo.jpg" class="profile-pic"/>

    <div style="text-align:center; width: 70%; margin: 0 auto; direction: rtl;">
        <h3>מה אני עושה בחיים?</h3>
        <p>
            אני משלב ביומיום שלי שני עולמות חזקים: מצד אחד לומד במגמת תקשורת ומפיק תוכן, ומצד שני לומד בהנדסת תוכנה ובונה קוד ומערכות (כמו האתר הזה שאתם רואים עכשיו!).
        </p>
    </div>

    <table>
        <tr class="topRow">
            <th>התחביב שלי</th>
            <th>פירוט והסבר</th>
        </tr>
        <tr>
            <td>🎬 יצירת סרטונים</td>
            <td>מצלם, עורך ומפיק סרטוני תוכן מקוריים לרשת.</td>
        </tr>
        <tr>
            <td>✍️ אנימציה ב-FlipaClip</td>
            <td>יוצר ומנפיש רעיונות, דמויות וסיפורים פריים-אחרי-פריים.</td>
        </tr>
        <tr>
            <td>🎵 מוזיקה</td>
            <td>כותב, מפיק ומעלה חומרים מקוריים לערוץ המוזיקלי הרשמי שלי.</td>
        </tr>
    </table>

    <div class="links-area">
        <h3 style="color: green;">ערוצי ה-YouTube הרשמיים שלי:</h3>
        <a href="https://www.youtube.com/@kdycrypticer" target="_blank">🎥 ערוץ הסרטונים הראשי</a>
        <a href="https://www.youtube.com/@kdycrypticerMUSIC" target="_blank">🎵 ערוץ המוזיקה המאומת</a>
    </div>

</asp:Content>