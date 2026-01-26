using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class Default2 : System.Web.UI.Page
{
    public string name;
    public string familiyname;
    public string whenyouwereborn;
    public string Email;
    public string favfood;
    public string moreinfo;
    public string favgame;
    public string theimage;
    public string passwordyo;
    public string phonenum;
    public string phonenumcontinue;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            name = "name: " + Request.Form["firstname"];
            familiyname = "familiyname: " + Request.Form["lastname"];
            whenyouwereborn = "whenyouwereborn: " + Request.Form["thedate"];
            Email = "Email: " + Request.Form["anEmail"];
            favfood = "favrite food: " + Request.Form["radio1"];
            moreinfo = "more to know: " + Request.Form["textarea1"];
            favgame = "favriate game: " + Request.Form["check1"];
            theimage = "yourface: " + Request.Form["file1"];
            passwordyo = "thepssword: " + Request.Form["password1"];
            phonenum = "the phone num: " + Request.Form["select1"] + "-";
            phonenumcontinue = Request.Form["phonenum"];




        }

    }
}