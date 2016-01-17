using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; // pemite trabajar con tablas 

public partial class ejemplo1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    void Calcula()
    {
        double monto, interes, saldo;
        int mes;
        DateTime feac, fsal;
        feac = DateTime.Now;// fecha actual
        mes = int.Parse(tmes.Text);
        monto = double.Parse(this.tdep.Text);

        // crear uns tabla llenarlo y asignarlo al gridview
        DataTable dt =new DataTable();
        dt.Columns.Add("Mes");
        dt.Columns.Add("Interes");
        dt.Columns.Add("Saldo");

        for(int m=1;m<=mes; m++)
        {
            fsal = feac.AddMonths(m);// agregar mes 
            interes = monto*0.01*m;
            saldo = monto + interes;
            dt.Rows.Add(fsal.ToShortDateString(), interes, saldo);

        }
        // asignar  al control 
        this.GridView1.DataSource = dt;
        this.GridView1.DataBind();// enlazar los datos 
        Session["datos"] = dt;// almacena la data en la sesion 
        Session["nombre"] = tcli.Text;

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Calcula();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
       Response.Redirect("ejemplo2.aspx");

    }
}