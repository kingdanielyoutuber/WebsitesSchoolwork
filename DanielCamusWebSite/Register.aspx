<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        function checkAll() {
            var isValid = true;
            // כאן תוסיף את הבדיקות שלך בעתיד
            return isValid;
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