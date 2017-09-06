<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" 
         Inherits="customValid._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
         "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Example of a CustomValidator control</title>
    <script type="text/javascript" language="javascript">
      function testEvenNumberClient(sender, e) {
        if (e.Value % 2 == 0)
          e.IsValid = true;
        else
          e.IsValid = false;
      }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    Please enter an even number:
      <asp:TextBox ID="even" runat="server" Width="40px" />
      <asp:CustomValidator 
        ID="CustormValidator1"
        runat="server"
        ControlToValidate="even"
        ErrorMessage="Number must be even"
        ClientValidationFunction="testEvenNumberClient"
        OnServerValidate="evenNumberTest" >
      </asp:CustomValidator>
      <br />
      <asp:Button runat="server" Text="Submit" />
      <br />
      <asp:Label ID="output" runat="server" />
    </form>
</body>
</html>
