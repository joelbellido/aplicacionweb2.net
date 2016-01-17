<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pagina1.aspx.cs" Inherits="WebA1.pagina1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 717px;
        }
        .auto-style4
        {
            font-size: large;
            text-align: center;
            color: #3399FF;
        }
        .auto-style6
        {
            width: 357px;
        }
        .auto-style7
        {
            width: 358px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style4" colspan="2">MI PRIMER PROGRAMA C#</td>
            </tr>
            <tr>
                <td class="auto-style6">INGRESE ALTURA </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txta" runat="server" Width="142px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">INGRESE BASE </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtb" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">HIPOTENUSA</td>
                <td id="lbhp" class="auto-style7">
                    <asp:Label ID="lbhp" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">PERIMETRO</td>
                <td class="auto-style7">
                    <asp:Label ID="lbper" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="CALCULAR" />
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
   <script type="text/javascript">
       function reloj() {
           var t = new Date;
           hh = t.getHours();
           mm = t.getMinutes();
           ss = t.getSeconds();
           cad = hh + ":" + mm + ":" + ss
           document.getElementById("lbreloj").innerHTML = cad;
           setTimeout("reloj()", 1000);
       }
   </script>




</body>
</html>
