<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ejemplo1.aspx.cs" Inherits="ejemplo1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            color: #0000FF;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
        }
        .auto-style5 {
            height: 23px;
            width: 307px;
        }
        .auto-style6 {
            width: 199px;
        }
        .auto-style7 {
            height: 23px;
            width: 199px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="3">TABLA DE INTERESES</td>
            </tr>
            <tr>
                <td class="auto-style4">CLIENTE</td>
                <td class="auto-style6">
                    <asp:TextBox ID="tcli" runat="server" Width="158px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tcli" ErrorMessage="dato obligatorio" style="color: #FF0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tcli" ErrorMessage="solo letras y espacio" ValidationExpression="[A-Z a-zñÑ]+" style="color: #FF0000"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">IMPORTE&nbsp; A DEPOSITAR </td>
                <td class="auto-style6">
                    <asp:TextBox ID="tdep" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="tdep" ErrorMessage="valor mayor o igual a 100" Operator="GreaterThanEqual" Type="Double" ValueToCompare="100" style="color: #FF0000"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">NUMERO DE MESES</td>
                <td class="auto-style7">
                    <asp:TextBox ID="tmes" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="tmes" ErrorMessage="valor entre 6 a 24" MaximumValue="24" MinimumValue="6" Type="Integer" style="color: #FF0000"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Calcular" />
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="ir  formulario 2" />
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="3">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="3" GridLines="Vertical" Height="264px" Width="392px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
