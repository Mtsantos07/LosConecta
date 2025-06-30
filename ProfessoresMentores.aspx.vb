Public Class ProfessoresMentores
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        SqlDataSource1.Insert()

        ' Salva os dados na sessão para exibir no Dashboard
        Session("Usuario") = txtNome.Text
        Session("TipoUsuario") = "Mentor"

        ' Redireciona para o dashboard
        Response.Redirect("Dashboard.aspx")
    End Sub

    Protected Sub TxtEmail_TextChanged(sender As Object, e As EventArgs) Handles TxtEmail.TextChanged

    End Sub
End Class
