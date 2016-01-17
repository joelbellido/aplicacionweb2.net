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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tcli" ErrorMessage="dato ovligatorio"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tcli" ErrorMessage="solo letra s y eapcio" ValidationExpression="[A-Z a-zñÑ]+"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">IMPORTE&nbsp; A DEPOSITAR </td>
                <td class="auto-style6">
                    <asp:TextBox ID="tdep" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="tdep" ErrorMessage="valor mayor o igual a 100" Operator="GreaterThanEqual" Type="Double" ValueToCompare="100"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">NUMERO DE MESES</td>
                <td class="auto-style7">
                    <asp:TextBox ID="tmes" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="tmes" ErrorMessage="valor entre 6 a 24" MaximumValue="24" MinimumValue="6" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="ir  formulario 2" />
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="3">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="264px" Width="392px">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
