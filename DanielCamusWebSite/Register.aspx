<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <form method="post" runat="server">
        name: <input type="text" name="firstname">
        familiyname: <input type="text" name="lastname">
        <hr/>
        מתי נולדת?: <input type="date" name="thedate">
        <hr/>
        אימייל <input type="email" name="anEmail">
    <hr />


    מה המאכל האהוב עליך?:
    <hr />

    סושי <input type="radio" name="options" value="סושי">
    <hr />
    בננה <input type="radio" name="options" value="בננה">
    <hr />
    תפוח <input type="radio" name="options" value="תפוח">

    <hr />
    עוד פרטים?: <textarea rows="5" cols="20" name="textarea1"></textarea>
    <hr />
    מה המשחקים הוידיאו האהובים עליך?:
    <hr />
    fortnight <input type="checkbox" name="games" value="fortnight">
    <hr />
    brawlstars <input type="checkbox" name="games" value="brawlstars">
    <hr />
     סיסמה: <input type="password" name="password1">
    <hr />
    
    מספר הטלפון: <select name="prefix">
      <option value="050">050</option>
      <option value="052">052</option>
      <option value="054">054</option>
    </select >
    <input type="password" name="phonenum">
    <hr />
        <input type="reset" name="reset1" value="reset">
        <input type="submit" name="thesender" value="submit">   
</form>
    <%=strResult %>
</asp:Content>

