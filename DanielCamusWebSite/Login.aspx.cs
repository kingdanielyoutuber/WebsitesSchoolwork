using System;
using System.Data;
using System.Web;
using System.Web.UI;

public partial class Login : System.Web.UI.Page
{
    public string strResult = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string strEmail = Request.Form["anEmail"];
            string strPassword1 = Request.Form["password1"];

            // 1. בדיקת מנהל
            if (strEmail == "theadminYES@gmail.com" && strPassword1 == "5768Lk")
            {
                Session["userName"] = "מנהל רשום";
                Session["userRole"] = "admin";
                Response.Redirect("Showmembers.aspx");
            }
            else
            {
                // 2. בדיקה מול מסד הנתונים
                string strSelect = "SELECT * FROM tUsers WHERE Email = N'" + strEmail + "' AND password = N'" + strPassword1 + "'";
                DataTable dt = MyAdoHelper.ExecuteDataTable(strSelect);

                if (dt.Rows.Count > 0)
                {
                    string firstName = dt.Rows[0]["name"].ToString(); // לפי עמודת name בטבלה
                    Session["userName"] = firstName + " רשום";
                    Session["userRole"] = "user";
                    Response.Redirect("showItems.aspx");
                }
                else
                {
                    // *** כאן התיקון החשוב! ***
                    // אם הפרטים לא נכונים, אנחנו מאפסים את ה-Session כדי שלא יזכור את המשתמש הקודם
                    Session["userName"] = null;
                    Session["userRole"] = null;
                    strResult = "אינך רשום במערכת, או שהפרטים שגויים.";
                }
            }
        }
    }
}