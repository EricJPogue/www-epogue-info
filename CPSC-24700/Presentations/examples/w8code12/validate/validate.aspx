<!-- validate.aspx
     An example of an ASP.NET document to illustrate server-side
     validation controls. Uses text boxes to get the name, phone
     number, and age of the client. These three controls are
     validated on the server.
     -->
<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
         "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> validate </title>
</head>
<body>
    <form id="form1" runat="server">
      <p>
        Your name:
        <asp:TextBox ID="name" runat="server" 
                     style="margin-left: 56px">
        </asp:TextBox>
        <asp:RequiredFieldValidator 
          ID="nameValidator"
          ControlToValidate="name"
          Display="Static"
          runat="server"
          ErrorMessage="Please enter your name">
        </asp:RequiredFieldValidator>
        <br />
          
        Your phone number:
        <asp:TextBox ID="phone" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator 
          ID="phoneValidator"
          ControlToValidate="phone"
          Display="Static"
          runat="server" 
          ErrorMessage="Phone number form must be ddd-ddd-dddd"
          ValidationExpression="\d{3}-\d{3}-\d{4}">
        </asp:RegularExpressionValidator>
        <br />
          
        Your age:
        <asp:TextBox ID="age" runat="server" style="margin-left: 68px" 
                     Width="40px">
        </asp:TextBox>
        <asp:RangeValidator 
          ID="RangeValidator1"
          ControlToValidate="age"
          Display="Static"
          runat="server"
          ErrorMessage="Age must be in the range of 10 to 110"
          MinimumValue="10"
          MaximumValue="110"
          Type="Integer">
        </asp:RangeValidator>
        <br />
        
        <asp:Button runat="server" Text="Submit" />
      </p>
    </form>
</body>
</html>
