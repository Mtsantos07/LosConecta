Public Class Alunos
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Protected Sub Button1_Click1(sender As Object, e As EventArgs) Handles Button1.Click
        SqlDataSource1.Insert()
       
        Session("Usuario") = txtNome.Text
        Session("TipoUsuario") = "Aluno"

        Response.Redirect("Dashboard.aspx")
    End Sub

    Protected Sub txtTurma_TextChanged(sender As Object, e As EventArgs) Handles txtTurma.TextChanged

    End Sub
End Class
