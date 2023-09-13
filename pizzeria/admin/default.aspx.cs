using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using static pizzeria.admin._default;
using static System.Net.Mime.MediaTypeNames;

namespace pizzeria.admin
{
    public partial class _default : System.Web.UI.Page
    {
         static List<Pizza> pizze = new List<Pizza>();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           Pizza pizza = new Pizza();
            
            string selectedValue = DropDownList1.SelectedItem.Value;
            foreach (var item in DropDownList1.Items)
            {
                if (item == DropDownList1.SelectedItem)
                {


                    if (selectedValue == "margherita")
                    {

                        pizza.Nome = "margherita";
                        pizza.Prezzo = 5.50;
                    }
                    else if (selectedValue == "diavola")
                    {
                        pizza.Nome = "diavola";
                        pizza.Prezzo = 7.00;
                    }
                    else if (selectedValue == "SALA3")
                    {
                        pizza.Nome = "americana";
                        pizza.Prezzo = 7.50;
                    }
                }

            }

            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {

                if (CheckBoxList1.Items[i].Selected)
                {
                    pizza.Prezzo += Convert.ToDouble(CheckBoxList1.Items[i].Value);

                }
               
                p1.InnerHtml = "pizza aggiunta";
            }
            pizze.Add(pizza);


        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            double tot= 0;
            foreach (var item in pizze)
            {
                tot += item.Prezzo;
            }
            p1.InnerHtml = $"hai speso {tot}€ e comprando {pizze.Count} pizze";
           
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect(FormsAuthentication.LoginUrl);
        }
    }

}


