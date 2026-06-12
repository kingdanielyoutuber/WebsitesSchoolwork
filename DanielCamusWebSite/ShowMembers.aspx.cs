using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShowMembers : System.Web.UI.Page
{
    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        // קליטת ערכים מהטופס
        string strFirstname = Request.Form["firstname"];
        string strLastname = Request.Form["lastname"];

        // שאילתת חיפוש בסיסית עם LIKE (חיפוש חלקי)
        string sql = "SELECT * FROM tUsers WHERE " +
                     "name LIKE N'%" + strFirstname + "%' AND " +
                     "familyname LIKE N'%" + strLastname + "%'";

        DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

        if (dt.Rows.Count == 0)
        {
            st = "<h3 style='text-align:center; color:red;'>לא נמצאו משתמשים תואמים</h3>";
        }
        else
        {
            st += "<table>";

            // שימוש בקלאס topRow בשביל צבע לבן לכותרת
            st += "<tr class='topRow'>";

            // הכותרות של הטבלה - מסודרות בדיוק לפי המבנה של הטבלה שלך (בלי ID)
            st += "<th>שם פרטי</th>";
            st += "<th>שם משפחה</th>";
            st += "<th>יום הולדת</th>";
            st += "<th>אימייל</th>";
            st += "<th>אוכל אהוב</th>";
            st += "<th>עוד מידע</th>";
            st += "<th>משחק אהוב</th>";
            st += "<th>סיסמה</th>";
            st += "<th>מספר טלפון</th>";
            st += "</tr>";

            // לולאה על השורות של המשתמשים
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                st += "<tr>";

                // מדפיסים כל תא באופן ידני ומפורש לפי שם העמודה ב-Database
                // ככה אין סיכוי שמשהו יזוז הצידה או יתבלבל בעיניים!
                st += "<td>" + dt.Rows[i]["name"] + "</td>";
                st += "<td>" + dt.Rows[i]["familyname"] + "</td>";
                st += "<td>" + dt.Rows[i]["BirthDay"] + "</td>";
                st += "<td>" + dt.Rows[i]["Email"] + "</td>";
                st += "<td>" + dt.Rows[i]["favfood"] + "</td>";
                st += "<td>" + dt.Rows[i]["moreinfo"] + "</td>";
                st += "<td>" + dt.Rows[i]["favgame"] + "</td>";
                st += "<td>" + dt.Rows[i]["password"] + "</td>";
                st += "<td>" + dt.Rows[i]["phonenumber"] + "</td>"; // הטלפון המלא בסוף

                st += "</tr>";
            }

            st += "</table>";
            st += "<p style='text-align:center; margin-top:10px;'>נמצאו " + dt.Rows.Count + " משתמשים</p>";
        }
    }
}