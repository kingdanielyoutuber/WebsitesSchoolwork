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
                     "familiyname LIKE N'%" + strLastname + "%'";

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

            // הכותרות של הטבלה (כולל עמודת ID ראשונה כדי להתאים בדיוק למספר העמודות בבסיס הנתונים)
            st += "<th>ID</th>";
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

            // לולאה על השורות
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                st += "<tr>";

                // לולאה על העמודות
                for (int k = 0; k < dt.Columns.Count; k++)
                {
                    st += "<td>" + dt.Rows[i][k] + "</td>";
                }

                st += "</tr>";
            }

            st += "</table>";
            st += "<p style='text-align:center; margin-top:10px;'>נמצאו " + dt.Rows.Count + " משתמשים</p>";
        }
    }
}