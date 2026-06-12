<%@ Page Title="גלריית פריטים" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        /* עיצוב הטבלה הבסיסי של האתר - מסגרת צהובה ורקע כחול */
        table {
            border: 2px solid yellow;
            width: 75%; /* רוחב מושלם ל-2 פריטים בשורה */
            margin: 20px auto;
            border-collapse: separate; 
            direction: rtl;
        }
        
        th, td {
            border: 2px solid #333;
            background-color: #0683f1;
            padding: 15px;
            text-align: center;
            color: black;
        }
        
        /* שורת הכותרת של הטבלה בלבן */
        tr.topRow {
            color: white; 
        }

        /* עיצוב התמונות בתוך הטבלה */
        table img {
            width: 85%;          
            height: 220px;       /* גובה אחיד ויפה לתמונות */
            object-fit: cover;   /* שומר שהתמונה לא תתעוות */
            border: 2px solid black; 
            margin-bottom: 5px;
        }

        /* עיצוב הטקסט שמתחת לתמונה */
        table b {
            color: black;
            font-size: 1.1em;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

    <table>
        <tr class="topRow">
            <h2 style="text-align:center; color:white;">גלריית פריטים</h2>
        </tr>
        
        <tr>
            <td>
                <img src="https://hiphip.co.il/wp-content/uploads/2023/02/0037190_-.jpeg" />
                <br /><b>תפוח זהב</b>
            </td>
            <td>
                <img src="https://m.media-amazon.com/images/I/71jZAGKRAQL._AC_UF1000,1000_QL80_.jpg" />
                <br /><b>משחק מריו מכוניות</b>
            </td>
        </tr>
        
        <tr>
            <td>
                <img src="https://www.thegate.ca/wp-content/uploads/2013/11/Xbox-One.jpg.webp" />
                <br /><b>Xbox</b>
            </td>
            <td>
                <img src="https://www.tecnik.co.il/ProductsImages/E242699.jpg" />
                <br /><b>כלי עבודה</b>
            </td>
        </tr>
        
        <tr>
            <td>
                <img src="https://superpharmstorage.blob.core.windows.net/hybris/products/mobile/medium/6942007609241.jpg" />
                <br /><b>כיסוי מסך</b>
            </td>
            <td>
                <img src="https://telechofesh.co.il/wp-content/uploads/2017/05/%D7%9B%D7%A8%D7%98%D7%99%D7%A1%D7%99-%D7%98%D7%99%D7%A1%D7%94.jpg" />
                <br /><b>כרטיסי טיסה</b>
            </td>
        </tr>
        
        <tr>
            <td>
                <img src="https://www.mylist.co.il/wp-content/uploads/2021/08/%D7%A7%D7%95%D7%A8%D7%A1-%D7%AA%D7%9B%D7%A0%D7%95%D7%AA.jpg" />
                <br /><b>שיעור תכנות</b>
            </td>
            <td>
                <img src="https://d3m9l0v76dty0.cloudfront.net/system/photos/6199252/original/8d6864734ffe4386d439b15efad0feb8.jpg" />
                <br /><b>קוביה הונגרית</b>
            </td>
        </tr>
    </table>

</asp:Content>