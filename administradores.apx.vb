Public Class Administradores
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles btnCadastrar.Click

        SqlDataSource1.Insert()

        Session("Usuario") = txtNome.Text
        Session("TipoUsuario") = "Administrador"

        Response.Redirect("Dashboard.aspx")

    End Sub

    Protected Sub txtEmail_TextChanged(sender As Object, e As EventArgs) Handles txtEmail.TextChanged

    End Sub
End Class
