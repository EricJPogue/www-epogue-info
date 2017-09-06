// CityState.aspx.cs
// The C# code-behind file for the CityState project.
// Includes a method, Zip_OnTextChanged, to create a hash of
// zip codes and city/state strings. When the zip code is 
// changed on the form, the method looks for the zip code in
// the hash, setting the city and state text boxes to the found
// values. If the zip code is not in the hash, it places empty
// strings in those text boxes

using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Zip_OnTextChanged(object sender, EventArgs e)
    {
        Hashtable zipCityState = new Hashtable();
        char[] delimiter = new char[] { ',' };
        zipCityState.Add("81611", "Aspen,Colorado");
        zipCityState.Add("81411", "Bedrock,Colorado");
        zipCityState.Add("80908", "Black Forest,Colorado");
        zipCityState.Add("80301", "Boulder,Colorado");
        zipCityState.Add("81127", "Chimney Rock,Colorado");
        zipCityState.Add("80901", "Colorado Springs,Colorado");
        zipCityState.Add("81223", "Cotopaxi,Colorado");
        zipCityState.Add("80201", "Denver,Colorado");
        zipCityState.Add("81657", "Vail,Colorado");
        zipCityState.Add("80435", "Keystone,Colorado");
        zipCityState.Add("80536", "Virginia Dale,Colorado");

        if (zipCityState.Contains(zip.Text))
        {
            city.Text =
                ((String)zipCityState[zip.Text]).Split(delimiter)[0];
            state.Text =
                ((String)zipCityState[zip.Text]).Split(delimiter)[1];
        }
        else
        {
            city.Text = "";
            state.Text = "";
        }
        Label2.Text = "(Refreshed at " + DateTime.Now.ToString() +
            ")";
    }

    protected void Page_Load(object sender, EventArgs e) {
        if (!Page.IsPostBack)
            Label1.Text = "(Initially loaded at " +
                DateTime.Now.ToString() + ")";
    }
}
