<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pagina2.aspx.cs" Inherits="WebA1.pagina2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
        }
        .auto-style2
        {
            height: 23px;
            text-align: center;
            color: #3333FF;
        }
        .auto-style3
        {
            text-align: center;
        }
        .auto-style4
        {
            text-align: left;
            width: 199px;
        }
        .auto-style5
        {
            text-align: center;
            width: 199px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2">AUTOPOSTBACK A NIVEL DE CONTROL Y METODO</td>
            </tr>
            <tr>
                <td class="auto-style5">SELECCIONE ARTEFACTO </td>
                <td>
                    <asp:DropDownList ID="cba" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cba_SelectedIndexChanged" style="margin-left: 2px" Width="165px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">
                    <asp:Image ID="Image1" runat="server" Height="222px" style="text-align: center" Width="296px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">PRECIO CONTADO</td>
                <td>
                    <asp:Label ID="lbpre" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">TIPO DE COMPRA</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal" Width="442px">
                        <asp:ListItem Value="6 ">6 Meses</asp:ListItem>
                        <asp:ListItem Value="12 ">12 Meses</asp:ListItem>
                        <asp:ListItem Value="18 ">18 Meses</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">INTERES</td>
                <td>
                    <asp:Label ID="lbinte" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">PRECIO FINAL </td>
                <td>
                    <asp:Label ID="lbpfin" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
