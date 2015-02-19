<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style2 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <strong>Salary Calculation WebSite </strong>
            <br />
            <br />
            <span class="auto-style2">Hourly wage:&nbsp;&nbsp;
            <asp:TextBox ID="tb_hourlyWage" runat="server" Height="22px" Width="124px"></asp:TextBox>
            <br />
            Number of hour:&nbsp;
            <asp:TextBox ID="tb_numofHour" runat="server" Height="22px" Width="124px"></asp:TextBox>
            <br />
            Pre-tax deduction:&nbsp;
            <asp:TextBox ID="tb_preTaxDeduction" runat="server" Height="22px" Width="124px"></asp:TextBox>
            <br />
            After tax deduction:&nbsp;
            <asp:TextBox ID="tb_afterTaxDeduction" runat="server" Height="22px" Width="124px"></asp:TextBox>
            <br />
            <br />
            <br />
            Net income&nbsp; :&nbsp;
            <asp:Label ID="lbl_result" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btn_calculate" runat="server" Text="Calculate Salary" />
&nbsp;
            <asp:Button ID="btn_clean" runat="server" Text="Clean" />
            </span>
        </div>
    </form>
</body>
</html>
