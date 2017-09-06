using System;
using System.Web.UI;
using localhost;

public partial class PaymentUser : System.Web.UI.Page 
{
    protected void buttonClick(object sender, EventArgs e)
    {
        PaymentService proxy = new PaymentService();
        Result.Text = String.Format("<br />Payment is: {0:C}",
            proxy.CalculatePayment(
             Convert.ToDouble(Loan.Text), 
             Convert.ToDouble(Interest.Text),
             Convert.ToInt32(Months.Text)));
    }
}
