<%@ Page Title="קצת עליי" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ownerDanielinfo.aspx.cs" Inherits="ownerDanielinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .about-container {
            direction: rtl;
            max-width: 800px;
            margin: 30px auto;
            padding: 25px;
            background-color: #ffffff;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .about-header {
            text-align: center;
            color: #333;
            margin-bottom: 10px;
        }
        .profile-pic {
            display: block;
            margin: 0 auto 20px;
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            border: 4px solid #a2ffd7; /* צבע המנטה של האתר שלך */
        }
        .subtitle {
            text-align: center;
            font-size: 1.2em;
            color: #666;
            margin-bottom: 30px;
        }
        .section-title {
            color: #222;
            border-bottom: 3px solid #a2ffd7;
            padding-bottom: 5px;
            margin-top: 30px;
        }
        .hobbies-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
            gap: 15px;
            margin-top: 15px;
        }
        .hobby-card {
            background-color: #f9f9f9;
            padding: 15px;
            border-right: 4px solid #a2ffd7;
            border-radius: 4px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.05);
        }
        .hobby-card h4 {
            margin-top: 0;
            color: #333;
        }
        .links-area {
            margin-top: 25px;
            text-align: center;
        }
        .btn-youtube {
            display: inline-block;
            padding: 12px 24px;
            margin: 10px;
            color: #333;
            background-color: #a2ffd7;
            text-decoration: none;
            border-radius: 25px;
            font-weight: bold;
            transition: all 0.3s ease;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        .btn-youtube:hover {
            background-color: #76e1b1;
            transform: translateY(-2px);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="about-container">
        <h1 class="about-header">קצת עליי</h1>
        <p class="subtitle">ברוכים הבאים לאתר שלי!</p>
        
        <img src="https://static.vecteezy.com/system/resources/thumbnails/066/074/459/small/a-person-wearing-a-hoodie-in-front-of-a-circular-hole-free-photo.jpg" class="profile-pic"/>

        <h3 class="section-title">מה אני עושה בחיים?</h3>
        <p>
            I משלב ביומיום שלי שני עולמות חזקים: מצד אחד לומד ב<strong>מגמת תקשורת</strong> ומפיק תוכן, ומצד שני לומד ב<strong>הנדסת תוכנה</strong> ובונה קוד ומערכות (כמו האתר הזה שאתם רואים עכשיו!).
        </p>

        <h3 class="section-title">התחביבים והיצירה שלי</h3>
        <div class="hobbies-grid">
            <div class="hobby-card">
                <h4>🎬 יצירת סרטונים</h4>
                <p>מצלם, עורך ומפיק סרטוני תוכן מקוריים לרשת.</p>
            </div>
            <div class="hobby-card">
                <h4>✍️ אנימציה ב-FlipaClip</h4>
                <p>יוצר ומנפיש רעיונות, דמויות וסיפורים פריים-אחרי-פריים.</p>
            </div>
            <div class="hobby-card">
                <h4>🎵 מוזיקה</h4>
                <p>כותב, מפיק ומעלה חומרים מקוריים לערוץ המוזיקלי הרשמי שלי.</p>
            </div>
            <div class="hobby-card">
                <h4>🎤 קומדיה</h4>
                <p>בנשמה שלי אני קומיקאי – אוהב להצחיק, למצוא פאנצ'ים ולראות את העולם מזווית משעשעת.</p>
            </div>
        </div>

        <h3 class="section-title">ערוצי ה-YouTube הרשמיים שלי</h3>
        <p style="text-align:center;">מוזמנים לבקר, לצפות ולעקוב אחרי היצירות שלי:</p>
        
        <div class="links-area">
            <a href="https://www.youtube.com/@kdycrypticer" target="_blank" class="btn-youtube">🎥 ערוץ הסרטונים הראשי</a>
            <a href="https://www.youtube.com/@kdycrypticerMUSIC" target="_blank" class="btn-youtube">🎵 ערוץ המוזיקה המאומת</a>
        </div>
    </div>
</asp:Content>