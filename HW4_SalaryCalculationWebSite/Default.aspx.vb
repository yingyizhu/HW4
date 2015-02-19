
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub btn_calculate_Click(sender As Object, e As EventArgs) Handles btn_calculate.Click

        'declare variables
        Dim hours As Decimal = Val(tb_numofHour.Text)
        Dim wage As Decimal= Val(tb_hourlyWage.Text)
        Dim pretax_deduction As Decimal = Val(tb_preTaxDeduction.Text)
        Dim aftertax_deduction As Decimal = Val(tb_afterTaxDeduction.Text)

        Dim grosspay As Decimal
        Dim taxablepay As Decimal
        Dim pay As Decimal
        Dim tax As Decimal
        Dim netpay As Decimal

        'calculate gross pay

        grosspay = hours * wage

        'calculate taxable pay

        taxablepay = grosspay - pretax_deduction

        If grosspay < 500 Then

            tax = taxablepay * 0.18

        Else : tax = taxablepay * 0.22

        End If

        'calculate pay

        pay = taxablepay - tax

        'calculate netpay

        netpay = pay - aftertax_deduction

        lbl_result.Text = String.Format("{0:C}", netpay)

    End Sub

    Protected Sub btn_clean_Click(sender As Object, e As EventArgs) Handles btn_clean.Click

        tb_afterTaxDeduction.Text = String.Empty ' clear input textbox
        tb_hourlyWage.Text = String.Empty ' clear input label
        tb_numofHour.Text = String.Empty ' clear input label
        tb_preTaxDeduction.Text = String.Empty ' clear input label
        lbl_result.Text = String.Empty ' clear output label

    End Sub
End Class
