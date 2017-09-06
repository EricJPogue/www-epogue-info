using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace customValid
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void evenNumberTest(object sender, ServerValidateEventArgs e)
        {
            int number = Convert.ToInt32(e.Value);
            if (number % 2 == 0) {
                e.IsValid = true;
                output.Text = "Good, the number is even";
            }
            else {
                e.IsValid = false;
                output.Text = "The number is odd!!!";
            }
        }
    }
}
