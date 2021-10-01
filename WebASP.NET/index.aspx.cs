using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebASP.NET
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            panOrder.Visible = panPricing.Visible = false;

            if (!Page.IsPostBack)
            {
                txtAddress.Visible = lblAddress.Visible = false;
                //

                //Add option to select pizza at position 0
                //NOW VEGETARIAN IS AT THAT LOCATION :)
                //THANKS HOANG <3
                cboPizza.Items.Add(new ListItem("Vegetarian", "10"));
                cboPizza.Items.Add(new ListItem("Hawaiians", "12"));
                cboPizza.Items.Add(new ListItem("All Dressed", "8"));
                cboPizza.Items.Add(new ListItem("Halal", "20"));
                //
                lstPizzaSize.Items.Add(new ListItem("Small", "1"));
                lstPizzaSize.Items.Add(new ListItem("Medium", "1.5"));
                lstPizzaSize.Items.Add(new ListItem("Large", "2"));
                //
                lstPizzaSize.SelectedIndex = 0;
                //
                chklstToppings.Items.Add(new ListItem("Bacon", "3"));
                chklstToppings.Items.Add(new ListItem("Mushroom", "1.5"));
                chklstToppings.Items.Add(new ListItem("Extra Cheese", "2"));
                chklstToppings.Items.Add(new ListItem("Olive", "2.5"));
                //
                radlstCrust.Items.Add(new ListItem("Normal"));
                radlstCrust.Items.Add(new ListItem("Thin"));
                radlstCrust.Items.Add(new ListItem("Thick"));
                //
                radlstCrust.SelectedIndex = 0;
            }

            if (cboPizza.SelectedIndex > 0)
            {
                calculatePrice();
            }
        }

        private void calculatePrice()
        { 

            decimal baseP=0, delivery=0, total=0, toppings=0, subTotal=0, tax = 0;

            baseP = Convert.ToDecimal(cboPizza.SelectedItem.Value) * Convert.ToDecimal(lstPizzaSize.SelectedItem.Value);
            litPricing.Text = "<br><b>Base Price: $ </b>" + baseP + "</br>";
            //
            if (chkDelivery.Checked)
            {
                delivery = 3;
                litPricing.Text += "<b> Delivery Price: $ </b>" + delivery + "</br>";
            }
            //
            foreach (ListItem item in chklstToppings.Items)
            {
                //if an item is selected, add the value to the toppings, else add 0
                //Ternary operation
                //+= recursion 
                toppings += (item.Selected) ? Convert.ToDecimal(item.Value) : 0;
            }
            litPricing.Text += "<b> Topping Price $ </b>" + toppings + "</br>";

            subTotal = baseP + delivery + toppings;
            litPricing.Text += "<b> SubTotal Price $ </b>" + subTotal + "</br>";

            tax = Math.Round(subTotal * Convert.ToDecimal(0.15),2);
            litPricing.Text += "<b> Taxes Price $ </b>" + tax + "</br>";

            total = Math.Round(subTotal + tax, 2);
            litPricing.Text += "<b> Total Price $ </b>" + total + "</br>";

            panPricing.Visible = true;
        }

        protected void chkDelivery_CheckedChanged(object sender, EventArgs e)
        {
            txtAddress.Visible = lblAddress.Visible = chkDelivery.Checked;

            // txtAddress.Visible = lblAddress.Visible = (chkDelivery.Checked) ? true : false;
        }

        protected void cboPizza_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnOrderNow_Click(object sender, EventArgs e)
        {
            panOrder.Visible = true;

            litOrder.Text = "Sir/Miss " + txtCustomer.Text + ", </br> Your order for a " + lstPizzaSize.SelectedItem.Text + "</br>" +
                cboPizza.SelectedItem.Text + "Pizza </br> with topping of: <ul> ";

            foreach (ListItem item in chklstToppings.Items)
            {
                litOrder.Text += item.Selected ? "<li>" + item.Text + "</li>" : "";
            }

            litOrder.Text += "</ul> On a " + radlstCrust.SelectedItem.Text + " crust <br/>";

            litOrder.Text += chkDelivery.Checked ? "will be delivered at " + "</br>" + txtAddress.Text : "The Pizza is to pick up.";
        }
    }
}