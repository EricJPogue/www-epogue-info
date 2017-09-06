<!-- controls.aspx
     An example of an ASP.NET document that creates a text box,
      a drop-down list, and a label.
     A code-behind file is used to populate the drop-down list
      and display a message when an item from the drop-down list
      is selected. The label is used for the message
      -->
      
<%@ Page Language="C#" AutoEventWireup="true"  
         CodeFile="controls.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
       "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Controls</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Name: <asp:TextBox ID="name" runat="server"></asp:TextBox>
        <br /><br />
        Favorite color: 
          <asp:DropDownList ID="color" runat="server"
                            AutoPostBack="true"
                            OnSelectedIndexChanged="itemSelected">
          </asp:DropDownList>
        <br /><br />
        <asp:Label ID="message" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
