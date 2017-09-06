<!-- helloVS.aspx
     A simple example of an ASP.NET document with controls, built
     using VS. It uses textboxes to get the name and age of the 
     client, which are then displayed.
     -->
<%@ Page Language="C#" AutoEventWireup="true" 
         CodeFile="helloVS.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title> helloVS </title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            Your name:
            <asp:TextBox ID="name" runat="server"></asp:TextBox>
            <br />
            Your age:
            <asp:TextBox ID="age" runat="server"></asp:TextBox> 
            <br />
            <asp:Button ID="submit" runat="server" Text="Submit" />
            <br />
            <% if (IsPostBack)
               { %>
               Hello <%= name.Text %> <br />
               You are <%= age.Text %> years old <br />
                <% } %>
        </p>
    </form>
</body>
</html>
