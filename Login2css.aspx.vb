Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub btnAdmin_Click(sender As Object, e As EventArgs)
        Response.Redirect("Administradores.aspx")
    End Sub

    Protected Sub btnAlunos_Click(sender As Object, e As EventArgs)
        Response.Redirect("Alunos.aspx")
    End Sub

    Protected Sub btnMentores_Click(sender As Object, e As EventArgs)
        Response.Redirect("ProfessoresMentores.aspx")
    End Sub
End Class
