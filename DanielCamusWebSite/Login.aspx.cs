using System;
using System.Data;
using System.Web;
using System.Web.UI;

public partial class Login : System.Web.UI.Page
{
    public string strResult = ""; // משתנה להצגת הודעות שגיאה למשתמש

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack) // בדיקה האם המשתמש לחץ על כפתור השליחה
        {
            string strEmail = Request.Form["anEmail"];
            string strPassword1 = Request.Form["password1"];

            // 1. בדיקה האם זה מנהל (אימייל וסיסמה קבועים מראש)
            if (strEmail == "theadminYES@gmail.com" && strPassword1 == "5768Lk")
            {
                // *** סימון מנהל ***
                Session["IsAdmin"] = "yes";       // הסבר: סשן ייחודי שמסמן למערכת שהאיש הזה הוא המנהל ויש לו הרשאות מיוחדות
                Session["UserName"] = "Admin";     // הסבר: שומר את השם שיוצג בברכת השלום באתר (שלום, Admin)

                Response.Redirect("Showmembers.aspx");
            }
            else
            {
                // 2. בדיקה במסד הנתונים האם המשתמש הרגיל קיים
                string strSelect = "SELECT * FROM tUsers WHERE Email = N'" + strEmail + "' AND password = N'" + strPassword1 + "'";
                DataTable dt = MyAdoHelper.ExecuteDataTable(strSelect);

                if (dt.Rows.Count == 0) // אם אין שורות - הפרטים שגויים וההתחברות נכשלה
                {
                    Session.Remove("IsAdmin");   // מוחקים את סימון המנהל לביטחון שלא יישאר מהתחברות קודמת
                    Session.Remove("UserName");  // מוחקים את שם המשתמש כדי להחזיר אותו למצב "אורח"
                    strResult = "אימייל או סיסמה שגויים";
                }
                else // אם נמצאה שורה - המשתמש הרגיל קיים בהצלחה!
                {
                    // *** סימון משתמש רגיל ***
                    Session.Remove("IsAdmin");   // הסבר: הוא משתמש רגיל, לכן אנחנו מוודאים ומוחקים לחלוטין את סימון המנהל! אין לו הרשאות!
                    Session["UserName"] = dt.Rows[0]["name"].ToString(); // הסבר: שומר את השם הפרטי האמיתי שלו מתוך מסד הנתונים

                    Response.Redirect("showItems.aspx");
                }
            }
        }
    }
}