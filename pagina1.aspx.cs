using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebA1
{
    public partial class pagina1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void Button1_Click1(object sender, EventArgs e)
        {
            double bas, alt, hp, per;
            bas = double.Parse(this.txtb.Text);
            alt = double.Parse(this.txta.Text);
            // los calculos 
            hp = Math.Sqrt(bas * bas + alt * alt);
            per = bas + alt + hp;
            //mostrar resultados
            lbhp.Text = hp.ToString();
            lbper.Text = per.ToString("####.##");

        }
    }
}