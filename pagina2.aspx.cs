using System;

using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//namespace WebA1
{
    public partial class ejemplo2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                cba.Items.Add("seleccionar");
                cba.Items.Add("filmadora");
                cba.Items.Add("licuadora");
                cba.Items.Add("radio");
                cba.Items.Add("televisor");

            }
        }

        protected void cba_SelectedIndexChanged(object sender, EventArgs e)
        {
            double[] pre = { 0, 2400, 300, 400, 1900 };
            string cad = cba.Text;
            Image1.ImageUrl = "artefactos/" +cad+ ".jpg";
            int indice = cba.SelectedIndex;
            lbpre.Text = pre[indice].ToString();


        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int mes = int.Parse(RadioButtonList1.SelectedValue);
            double interes=0, precio,pfin;
            precio = double.Parse(lbpre.Text);
            switch (mes)
            {
                case 6: interes = precio * 0.10; break;
                case 12: interes = precio * 0.20; break;
                case 18: interes = precio * 0.30; break;

            
            }
            pfin = interes + precio;
            lbinte.Text = interes.ToString();
            lbpfin.Text = pfin.ToString();

        }
    }
}