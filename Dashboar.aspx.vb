Public Class Dashboard
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            If Session("Usuario") IsNot Nothing AndAlso Session("TipoUsuario") IsNot Nothing Then
                lblNome.Text = "Usuário: " & Session("Usuario").ToString()
                lblTipo.Text = "Tipo: " & Session("TipoUsuario").ToString()
            Else
                ' Redireciona caso sessão não exista
                Response.Redirect("Login.aspx")
            End If
        End If

        If Not IsPostBack Then
            If Session("Usuario") IsNot Nothing AndAlso Session("TipoUsuario") IsNot Nothing Then
                lblNome.Text = "Usuário: " & Session("Usuario").ToString()
                lblTipo.Text = "Tipo: " & Session("TipoUsuario").ToString()
            Else
                Response.Redirect("Login.aspx")
            End If
        End If

        If Not IsPostBack Then
            If Session("Usuario") IsNot Nothing AndAlso Session("TipoUsuario") IsNot Nothing Then
                lblNome.Text = "Usuário: " & Session("Usuario").ToString()
                lblTipo.Text = "Tipo: " & Session("TipoUsuario").ToString()
            Else
                Response.Redirect("Login.aspx")
            End If
        End If


    End Sub

    Protected Sub btnLogout_Click(sender As Object, e As EventArgs) Handles btnLogout.Click
        Session.Clear()
        Response.Redirect("Login.aspx")
    End Sub
End Class
