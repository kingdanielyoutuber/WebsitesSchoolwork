using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    public string strResult;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack) //אם לחצו על שלח (אחרת תיכנס רשומה ריקה לטבלה)
        {
            string strFirstname = Request.Form["firstname"];
            string strLastname = Request.Form["lastname"];
            string strDate= Request.Form["thedate"];
            string strEmail = Request.Form["anEmail"];
            string strOptions = Request.Form["options"];
            string strTextarea1 = Request.Form["textarea1"];
            string strGames = Request.Form["games"];
            string strPassword1 = Request.Form["password1"];
            string strPrefix = Request.Form["prefix"];
            string strPhoneNum = Request.Form["phonenum"];

            //////////////////////מניעת רישום כפול עם אותח מייל
            string strSelect = "select * from tUsers where " +
            " email = N'" + strEmail + "' ";

            bool isExist = MyAdoHelper.IsExist(strSelect);
            if (isExist)
                strResult = "המשתמש תפוס";
            else

            {
                string strInsert = "Insert into tUsers values("
                    + "N'" + strFirstname + "'" + ","
                    + "N'" + strLastname + "'" + ","
                    + "N'" + strDate + "'" + ","
                    + "N'" + strEmail + "'" + ","
                    + "N'" + strOptions + "'" + ","
                    + "N'" + strTextarea1 + "'" + ","
                    + "N'" + strGames + "'" + ","
                    + "N'" + strPassword1 + "'" + ","
                    + "N'" + strPrefix + strPhoneNum + "'" + ")";

                MyAdoHelper.DoQuery("MyDB.mdf", strInsert);
                //strResult = "נרשמת בהצלחה";
                //עבור לדף אחר
                Response.Redirect("Login.aspx");
            }
        }
    }
}