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
        //if (Page.IsPostBack) לא צריך להשאיר ככה
        {
            string strFirstname = Request.Form["firstname"];
            string strLastname = Request.Form["lastname"];
            // אוסף את כל הרשומות
            string sql = "SELECT * FROM tUsers WHERE " +
                "name LIKE N'%" + strFirstname + "%' AND " +
                "familiyname LIKE N'%" + strLastname + "%'";

            DataTable dt = MyAdoHelper.ExecuteDataTable(sql);

            if (dt.Rows.Count == 0)
            {
                st = "איו נתונים";
            }
            else
            {
                st += "<table border='1'>";
                st += "<tr>";
                st += "<td>שם פרטי</td>";
                st += "<td>שם משפחה</td>";
                st += "<td>יום הולדת</td>";
                st += "<td>איימל</td>";
                st += "<td>אוכל אהוב</td>";
                st += "<td>עוד מידע</td>";
                st += "<td>משחק אהוב</td>";
                st += "<td>סיסמה</td>";
                st += "<td>מספר טלפון</td>";
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
            }
        }
    }
}