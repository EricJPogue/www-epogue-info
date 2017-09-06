// controls.aspx.cs
//   The code-behind file for controls.aspx
//   In an Page_Load handler, it populates the drop-down
//   list created in the associated source document.
//   It also includes a handler for the button, which
//   produces a message to the client, including the 
//   client's name and the chosen item from the drop-down
//   list

using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            color.Items.Add(new ListItem("blue"));
            color.Items.Add(new ListItem("red"));
            color.Items.Add(new ListItem("green"));
            color.Items.Add(new ListItem("yellow"));
        }
    }

    protected void itemSelected(object sender, EventArgs e)
    {
        string newMsg = string.Format(
            "Hi {0}; your favorite color is {1}",
            name.Text, color.SelectedItem);
        message.Text = newMsg;
    }
}
