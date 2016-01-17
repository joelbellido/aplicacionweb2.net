using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ejemplo2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // recuperar la tabla de la sesion 

        lbcli.Text = (string)Session["nombre"];
       
        DataTable cp = (DataTable)Session["datos"];
        this.GridView1.DataSource = cp;
        this.GridView1.DataBind();
        // prueba 
    }

    protected void Button1_Click(object sender, EventArgs e)
    {   // redireccionar a una  página
        Response.Redirect("ejemplo1.aspx");
        string cad = "<script>location =history.back()<script>";
        Response.Write(cad);
    }
}