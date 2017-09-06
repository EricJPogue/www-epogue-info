<!-- CityState.aspx
     This document presents a form to the user, requesting
     the user's name, address, and zip code. When the zip
     code is entered, the document uses an Ajax request to
     get the names of the city and state that correspond to
     the given zip code. Time stamps are used to indicate 
     that the initial display and the Ajax updated display
     were at different times.
     -->
<%@ Page Language="C#" AutoEventWireup="true"  
         CodeFile="CityState.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
   
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:Label ID="Label1" runat="server" >
        </asp:Label>
        <br /><br />
        <asp:TextBox ID="name" columns="30" runat="server"/>
        Name <br />
        <asp:TextBox ID="address" columns="30" runat="server"/>
        Address <br />
        <asp:TextBox ID="zip" columns="30" runat="server"
                     AutoPostBack="true"
                     OnTextChanged="Zip_OnTextChanged"/>
        Zip code
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:TextBox ID="city" columns="30" runat="server"/>
                City <br />
                <asp:TextBox ID="state" columns="30" runat="server"/>
                State <br /><br />
                <asp:Label ID="Label2" runat="server" >
                </asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
     </form>
</body>

</html>
