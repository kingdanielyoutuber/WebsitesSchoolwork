<%@ Page Title="גלריית פריטים" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .gallery-container {
            direction: rtl;
            max-width: 1200px;
            margin: 30px auto;
            padding: 20px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .gallery-header {
            text-align: center;
            color: #333;
            margin-bottom: 10px;
        }
        .gallery-underline {
            width: 80px;
            height: 4px;
            background-color: #a2ffd7; /* צבע המנטה של האתר */
            margin: 0 auto 30px auto;
            border-radius: 2px;
        }
        /* מבנה הרשת של הגלריה - מתאים את עצמו אוטומטית לגודל המסך */
        .gallery-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 20px;
        }
        /* כרטיסייה של תמונה בגלריה */
        .gallery-item {
            background-color: #ffffff;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 10px rgba(0,0,0,0.08);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            border: 2px solid transparent;
        }
        /* אפקט ריחוף מעל כרטיסיית תמונה */
        .gallery-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 15px rgba(0,0,0,0.15);
            border-color: #a2ffd7; /* מסגרת מנטה בריחוף */
        }
        /* עיצוב התמונה עצמה */
        .gallery-item img {
            width: 100%;
            height: 220px;
            object-fit: cover; /* דואג שהתמונה לא תתעוות */
            display: block;
        }
        /* אזור טקסט מתחת לתמונה (אופציונלי - אם תרצה לרשום שם פריט) */
        .gallery-item-info {
            padding: 15px;
            text-align: center;
            background-color: #fafafa;
            border-top: 1px solid #eee;
        }
        .gallery-item-info h4 {
            margin: 0;
            color: #444;
            font-size: 1.1em;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="gallery-container">
        <h1 class="gallery-header">גלריית פריטים</h1>
        <div class="gallery-underline"></div>

        <div class="gallery-grid">
            
            <div class="gallery-item">
                <img src="https://hiphip.co.il/wp-content/uploads/2023/02/0037190_-.jpeg"/>
                <div class="gallery-item-info">
                    <h4>תפוח זהב</h4>
                </div>
            </div>

            <div class="gallery-item">
                <img src="https://m.media-amazon.com/images/I/71jZAGKRAQL._AC_UF1000,1000_QL80_.jpg"/>
                <div class="gallery-item-info">
                    <h4>משחק מריו מכוניות</h4>
                </div>
            </div>

            <div class="gallery-item">
                <img src="https://www.thegate.ca/wp-content/uploads/2013/11/Xbox-One.jpg.webp"/>
                <div class="gallery-item-info">
                    <h4>Xbox</h4>
                </div>
            </div>

            <div class="gallery-item">
                <img src="https://www.tecnik.co.il/ProductsImages/E242699.jpg"/>
                <div class="gallery-item-info">
                    <h4>כלי עבודה</h4>
                </div>
            </div>

            <div class="gallery-item">
                <img src="https://superpharmstorage.blob.core.windows.net/hybris/products/mobile/medium/6942007609241.jpg"/>
                <div class="gallery-item-info">
                    <h4>כיסוי מסך</h4>
                </div>
            </div>

            <div class="gallery-item">
                <img src="https://telechofesh.co.il/wp-content/uploads/2017/05/%D7%9B%D7%A8%D7%98%D7%99%D7%A1%D7%99-%D7%98%D7%99%D7%A1%D7%94.jpg"/>
                <div class="gallery-item-info">
                    <h4>כרטיסי טיסה</h4>
                </div>
            </div>

            <div class="gallery-item">
                <img src="https://www.mylist.co.il/wp-content/uploads/2021/08/%D7%A7%D7%95%D7%A8%D7%A1-%D7%AA%D7%9B%D7%A0%D7%95%D7%AA.jpg"/>
                <div class="gallery-item-info">
                    <h4>שיעור תכנות</h4>
                </div>
            </div>

             <div class="gallery-item">
                <img src="https://d3m9l0v76dty0.cloudfront.net/system/photos/6199252/original/8d6864734ffe4386d439b15efad0feb8.jpg"/>
                <div class="gallery-item-info">
                    <h4>קוביה הונגרית</h4>
                </div>
            </div>

        </div>
    </div>
</asp:Content>