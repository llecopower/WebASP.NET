using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebASP.NET
{
    public partial class webControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ListItem itm = new ListItem("São Paulo FC", "Brazil");
                cboTeams.Items.Add(itm);
                cboTeams.Items.Add(new ListItem("Montreal Impact", "Canada"));
                cboTeams.Items.Add(new ListItem("Barcelona", "Spain"));
             

            }
        }

        protected void cboTeams_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblResult.Text = cboTeams.SelectedItem.Text + " plays in " + cboTeams.SelectedItem.Value;
        }
    }
}