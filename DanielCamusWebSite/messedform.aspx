<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="messedform.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
        <head>
            <title>Daniel Camus project</title>
<style>
   table { 
      border:1px solid black; 
      width: 50%; 
      margin: 20px auto;
	  border-collapse: separate; 
    }
    th, td { 
      border: 2px solid #333; 
	  }
	 
	  tr.thebob1 { 
	  
	  color: white; 
	  }
	  
	  
	  tr.thebob2 {
	  
	  color: white;
	  background-color: red	  
	  }
	  
	  	  tr.thebob1 {
	  
	  color: green;
	  background-color: orange	  
	  }
	  
	  
	  

</style>


        </head>

        <body style="background-color:powderblue;">

<a href="https://occ-0-8407-2218.1.nflxso.net/dnm/api/v6/6AYY37jfdO6hpXcMjf9Yu5cnmO0/AAAABUWZDBahxFhfDdfPrpzAtPHWp0Pzij5BDYrODvn7gFBF1FmkIHyS9kVGWzo2AuleEKmtj35nYMo2RjKGtd-nwlVLA5YtuPuYwXtC.jpg?r=378">
<img src=https://petapixel.com/assets/uploads/2024/01/The-Star-of-System-Sol-Rectangle-640x800.jpg width="500" height="333">
</a>

<hr/>

<a href="https://en.wikipedia.org/wiki/Minecraft:_Story_Mode">
click on me!
</a>


<hr/>

<h1 style="background-color:Tomato;">doing my project while listening to music :)</h1>
<h3 style="color:MediumSeaGreen;">words yoyooooooooo.</h3>
<h2 style="background-color:Tomato;"style="color:MediumSeaGreen;">hiyoooo</h2>
<p style="color:red;background-color: blue">yooooooo</p>

<hr/>
  <table>
    <tr class="thebob2">
      <th>*</th>
      <th>1</th>
      <th>2</th>
      <th>3</th>
      <th>4</th>
      <th>5</th>
	  <th>6</th>
    </tr>
	
    <tr class="thebob1">
      <th>1</th>
      <td>1</td>
      <td>2</td>
      <td>3</td>
      <td>4</td>
      <td>5</td>
	  <td>6</td>
    </tr>
	
    <tr class="thebob1">
<th>2</th>
<td>2</td>
<td>4</td>
<td>6</td>
<td>8</td>
<td><img src="https://m.media-amazon.com/images/S/pv-target-images/03125e3dba48c2b4fffa8ea3997759757a91d1d87e57239976ea8aee3cc25563._SX1080_FMjpg_.jpg" width="250" height="100"></td>
<td>12</td>
</tr>

<tr class="thebob1">
<td rowspan="2" colspan="2">sup</td>
<td>3</td>
<td>6</td>
<td>9</td>
<td rowspan="3">bobbby</td>
<td>15</td>
<td>18</td>
</tr>

<tr class="thebob1">
<th>4</th>
<th>middle</th>
<td>8</td>
<td colspan="2">12</td>
<td>16</td>
<td>20</td>
<td>24</td>
    </tr>

    <tr class="thebob1">
      <th>5</th>
      <td>5</td>
      <td colspan="4">yessir</td>
      <td>15</td>
      <td>20</td>
      <td>25</td>
	  <td>30</td>
	  <td>I did it</td>
    </tr>






</body>
    </html>
    <div style="background-color:blueviolet">
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

    סושי <input type="radio" name="radio1" value="סושי">
    <hr />
    בננה <input type="radio" name="radio1" value="בננה">

    <hr />
 
    תפוח <input type="radio" name="radio1" value="תפוח">

    <hr />
    עוד פרטים?: <textarea rows="5" cols="20" name="textarea1"></textarea>
    <hr />
    מה המשחקים הוידיאו האהובים עליך?:
    <hr />
    fortnight <input type="checkbox" name="check1" value="fortnight">
    <hr />
    brawlstars <input type="checkbox" name="check1" value="brawlstars">
    <hr />
    תוסיף תמונת פנים שלך: <input type="file" name="file1">
    <hr />
     סיסמה: <input type="password" name="password1">
    <hr />
    
    מספר הטלפון: <select name=select1>
      <option value="050">050</option>
      <option value="052">052</option>
      <option value="054">054</option>
    </select >
    <input type="password" name="phonenum">
    <hr />
        <input type="reset" name="reset1" value="reset">
        <input type="submit" name="thesender" value="submit">   
</form>

    <%=name %>
 <%=familiyname %>
 <%=whenyouwereborn %>
 <%= Email %>
 <%= favfood %>
 <%= moreinfo %>
 <%= favgame %>
 <%= theimage %>
 <%= passwordyo %>
 <%= phonenum %> <%= phonenumcontinue %>

</asp:Content>

