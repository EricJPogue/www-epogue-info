using System;
using System.Web;
using System.Web.Services;

[WebService(Namespace = "http://www.uccs.sebesta/services/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, 
// using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class PaymentService : System.Web.Services.WebService
{
    [WebMethod(EnableSession = true)]
    public double CalculatePayment(double loanAmt, double intRate,
                                   int months)
    {
        double monthRate, payment;
        monthRate = intRate / 12.0d;
        payment = (monthRate * loanAmt) /
                    (1.0d - Math.Pow(1.0d + monthRate, -months));
        return payment;
    }
}