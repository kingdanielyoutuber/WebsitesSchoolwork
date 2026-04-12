using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Registeritem : System.Web.UI.Page
{
    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            // 1. שליפת הנתונים מהטופס
            string strItemName = Request.Form["itemName"];

            // שים לב: שיניתי ל-"textarea1" כדי שיתאים ל-HTML החדש שלך
            string strItemDescription = Request.Form["textarea1"];

            string strItemCount = Request.Form["itemCount"];
            string strItemPrice = Request.Form["itemPrice"];

            // 2. טיפול בערכים ריקים למספרים
            if (string.IsNullOrEmpty(strItemCount)) strItemCount = "0";
            if (string.IsNullOrEmpty(strItemPrice)) strItemPrice = "0";

            // 3. בניית שאילתה
            string sqlInsert = "INSERT INTO tItems (itemName, itemDescription, itemCount, itemPrice) " +
                               "VALUES (N'" + strItemName + "', N'" + strItemDescription + "', " +
                               strItemCount + ", " + strItemPrice + ")";

            try
            {
                // 4. ביצוע השאילתה
                MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);
                st = "הפריט '" + strItemName + "' נרשם בהצלחה!";
            }
            catch (Exception ex)
            {
                st = "שגיאה בשמירה: " + ex.Message;
            }
        }
    }
}