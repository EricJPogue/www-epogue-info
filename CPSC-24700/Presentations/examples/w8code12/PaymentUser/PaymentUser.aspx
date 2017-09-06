<%@ Page Language="C#" AutoEventWireup="true"  
         CodeFile="PaymentUser.aspx.cs" Inherits="PaymentUser" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
       "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PaymentUser</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>
            Loan amount: <asp:TextBox ID="Loan" 
                                      runat="server" 
                                      columns="8" />
            Interest rate: <asp:TextBox ID="Interest"
                                        runat="server"
                                        columns="6" />
            Number of months: <asp:TextBox ID="Months"
                                           runat="server"
                                           columns="4" />
            <br /> <br />
            <asp:Button ID="callService" runat="server"
                        Text="Call CalculatePayment Service"
                        onClick="buttonClick" />
            <br />
            <asp:Label ID="Result" runat="server" />
        </p>
        </div>
    </form>
</body>
</html>
