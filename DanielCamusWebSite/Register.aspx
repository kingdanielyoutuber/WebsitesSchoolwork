<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script language="javascript">
    function checkAll() {
        // איפוס כל הודעות השגיאה
        firstnameerror.innerHTML = "";
        lastnameerror.innerHTML = "";
        password1error.innerHTML = "";
        anEmailerror.innerHTML = "";
        phonenumerror.innerHTML = "";
        optionserror.innerHTML = "";
        gameserror.innerHTML = "";
        thedateerror.innerHTML = "";
        textarea1error.innerHTML = "";

        var f = true;

        // ביצוע כל הבדיקות
        f = checkFirstName() && f;
        f = checkLastName() && f;
        f = checkPassword() && f;
        f = checkEmail() && f;
        f = checkPhone() && f;
        f = checkOptions() && f;
        f = checkGames() && f;
        f = checkBirthday() && f;
        f = checkMoreInfo() && f;

        return f;
    }

    function checkFirstName() {
        var name = document.getElementById("firstname").value;
        if (name.length < 3 || name.length > 30) {
            firstnameerror.innerHTML = "אורך השם הפרטי לא תקין";
            return false;
        }
       /* if (name.length < 3 || name.length > 30) {
            for (int i = 0; i.name.length; i++) {
                if (name[i] < 'a' || name[i] > 'z') {
                    firstnameerror.innerHTML = "שם חייב להחיל אותיות באנגלית בלבד";
                    return false;
                }
                if (name[i] < 'A' || name[i] > 'Z') {
                    firstnameerror.innerHTML = "שם חייב להחיל אותיות באנגלית בלבד";
                    return false;
                }
            }
            firstnameerror.innerHTML = "אורך השם הפרטי לא תקין";
            return false;
        }
        */
        return true;
    }

    function checkLastName() {
        var lastName = document.getElementById("lastname").value;
        if (lastName.length <= 3 || lastName.length > 30) {
            lastnameerror.innerHTML = "אורך השם המשפחה לא תקין";
            return false;
        }
        return true;
    }

    function checkPassword() {
    }

    }

    function checkPhone() {
    }

    function checkBirthday() {
    }

    function checkMoreInfo() {
        var info = document.getElementById("textarea1").value;

        if (info.length < 20) {
            textarea1error.innerHTML = "צריך לכתוב לפחות 20 תווים בפירוט";
            return false;
        }
        
        else if (info.length > 200) {
            textarea1error.innerHTML = "הפירוט ארוך מדי (מקסימום 200 תווים)";
            return false;
        }

        return true;
    }

    function checkOptions() {
    }

    function checkGames() {
    }
</script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form method="post" runat="server" onsubmit="return checkAll();">
        
        name: <input type="text" name="firstname" id="firstname"><span class="error" id="firstnameerror"></span>
        <hr/>
        
        familiyname: <input type="text" name="lastname" id="lastname"><span class="error" id="lastnameerror"></span>
        <hr/>
        
        מתי נולדת?: <input type="date" name="thedate" id="thedate"><span class="error" id="thedateerror"></span>
        <hr/>
        
        אימייל: <input type="email" name="anEmail" id="anEmail"><span class="error" id="anEmailerror"></span>
        <hr />

        מה המאכל האהוב עליך?:
        <hr />
        סושי <input type="radio" name="options" value="סושי" id="options1">
        בננה <input type="radio" name="options" value="בננה" id="options2">
        תפוח <input type="radio" name="options" value="תפוח" id="options3">
        <span class="error" id="optionserror"></span>
        <hr />

        עוד פרטים?: <textarea rows="5" cols="20" name="textarea1" id="textarea1"></textarea>
        <span class="error" id="textarea1error"></span>
        <hr />

        מה המשחקים הוידיאו האהובים עליך?:
        <hr />
        fortnight <input type="checkbox" name="games" value="fortnight" id="games1">
        brawlstars <input type="checkbox" name="games" value="brawlstars" id="games2">
        <span class="error" id="gameserror"></span>
        <hr />

        סיסמה: <input type="password" name="password1" id="password1"><span class="error" id="password1error"></span>
        <hr />
        
        מספר הטלפון: 
        <select name="prefix" id="prefix">
            <option value="050">050</option>
            <option value="052">052</option>
            <option value="054">054</option>
        </select>
        <input type="password" name="phonenum" id="phonenum">
        <span class="error" id="phonenumerror"></span>
        <hr />

        <input type="reset" name="reset1" value="reset">
        <input type="submit" name="thesender" value="submit">   
    </form>
    <%=strResult %>
</asp:Content>