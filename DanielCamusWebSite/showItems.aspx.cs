using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class showItems : System.Web.UI.Page
{
    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        // 1. קליטת ערכי החיפוש מהטופס
        string strName = Request.Form["itemNameSearch"];
        string strPrice = Request.Form["itemPriceSearch"];

        // 2. טיפול במחיר - אם ריק, נשים מספר גבוה מאוד כדי שיציג הכל
        if (string.IsNullOrEmpty(strPrice))
        {
            strPrice = "999999";
        }

        // 3. בניית השאילתה המשולבת (שם ומחיר)
        string sql = "SELECT * FROM tItems WHERE " +
                     "itemName LIKE N'%" + strName + "%' AND " +
                     "itemPrice <= " + strPrice;

        // 4. הרצת השאילתה
        DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

        if (dt.Rows.Count == 0)
        {
            st = "<h3 style='text-align:center; color:red;'>לא נמצאו פריטים תואמים לחיפוש</h3>";
        }
        else
        {
            st += "<table>";

            // חיבור לקלאס הלבן שעשינו ב-CSS
            st += "<tr class='topRow'>";

            // כותרות
            st += "<th>קוד פריט</th>";
            st += "<th>שם הפריט</th>";
            st += "<th>תיאור</th>";
            st += "<th>כמות במלאי</th>";
            st += "<th>מחיר ליחידה</th>";
            st += "</tr>";

            // לולאה רצה על השורות
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                st += "<tr>";

                // לולאה רצה על העמודות (Id, Name, Description, Count, Price)
                for (int k = 0; k < dt.Columns.Count; k++)
                {
                    st += "<td>" + dt.Rows[i][k] + "</td>";
                }

                st += "</tr>";
            }

            st += "</table>";
            st += "<p style='text-align:center; margin-top:10px;'>נמצאו " + dt.Rows.Count + " פריטים</p>";
        }
    }
}