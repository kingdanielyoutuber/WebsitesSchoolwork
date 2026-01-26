using System;
using System.Activities.Expressions;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;



public partial class aspnet : System.Web.UI.Page
{
    public string TableHtml = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        BuildTable(); // Adds so the page will in load with the table already built (so I can do it from all pages)
    }

    public void BuildTable()
    {
        TableHtml = "<table border='1' style='width:300px; text-align:center; border-collapse:collapse;'>";

        for (int i = 1; i <= 10; i++)
        {
            TableHtml += "<tr>";

            for (int j = 1; j <= 10; j++)
            {
                TableHtml += "<td>" + (i * j) + "</td>";
            }

            TableHtml += "</tr>";
        }

        TableHtml += "</table>";
        
    }
}

