<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="5501_QCTE_1.aspx.cs" Inherits="IMT.DataUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 185px;
        }
        .auto-style2 {
            width: 219px;
        }
        .auto-style3 {
            width: 66px;
        }
        .auto-style4 {
            width: 182px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <strong>&nbsp;Membrane Ex-situ Quality Check </strong>
        </div>
        <table style="width:100%;">
            <tr>
                <td class="auto-style1"><strong>Operation Name:</strong></td>
                <td class="auto-style2"><strong>QCTE</strong></td>
                <td><strong></strong></td>
            </tr>
            <tr>
                <td class="auto-style1"><strong>Operation Number:</strong></td>
                <td class="auto-style2"><strong>5501</strong></td>
                <td><strong></strong></td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3"><strong>Measurement results:</strong></td>
            </tr>
            <tr>
                <td class="auto-style1">Lot Numer:</td>
                <td class="auto-style2">
                    <asp:Label ID="lblLotNumber" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Product ID:</td>
                <td class="auto-style2">
                    <asp:Label ID="lblProductID" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Test Start Date</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Test Procedure</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Inspector</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Tensile strength</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td>Mpa</td>
            </tr>
            <tr>
                <td class="auto-style1">Tensile strength std</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
                <td>Mpa</td>
            </tr>
            <tr>
                <td class="auto-style1">Tensile Strain</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
                <td>%</td>
            </tr>

       
        </table>
    <p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="btnClear" runat="server" Text="Clear" />
                </td>
                <td>
                    <asp:Button ID="btnUpload" runat="server" Text="Upload" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </p>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
