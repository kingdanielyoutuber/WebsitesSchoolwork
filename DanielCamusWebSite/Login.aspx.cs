using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    public string strResult;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack) //אם לחצו על שלח (אחרת תיכנס רשומה ריקה לטבלה)
        {
            string strEmail = Request.Form["anEmail"];
            string strPassword1 = Request.Form["password1"];

            //N for special characters including hebrew
            //select * from tUsers where email=N'רינת' and password=N'123!@#' 
            string strSelect = "select * from tUsers where " +
                " email = N'" + strEmail + "' " +
                " and " +
                " password = N'" + strPassword1 + "'";

            bool isExist = MyAdoHelper.IsExist(strSelect);
            if (isExist)
                strResult = "OK";
            else
                strResult = "אינך רשום";
        }
    }
}