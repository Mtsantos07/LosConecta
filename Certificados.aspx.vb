Imports System.Collections.Generic

Public Class Certificados
    Inherits System.Web.UI.Page

  
    Public Class Mentor
        Public Property Nome As String
        Public Property ImagemCertificado As String
    End Class

    '
    Public Class Materia
        Public Property Materia As String
        Public Property Mentores As List(Of Mentor)
    End Class

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            
            Dim dados As New List(Of Materia) From {
                New Materia With {
                    .Materia = "Matemática",
                    .Mentores = New List(Of Mentor) From {
                        New Mentor With {.Nome = "Ana Silva", .ImagemCertificado = "certificados/matematica_ana.png"},
                        New Mentor With {.Nome = "Carlos Souza", .ImagemCertificado = "certificados/matematica_carlos.png"}
                    }
                },
                New Materia With {
                    .Materia = "História",
                    .Mentores = New List(Of Mentor) From {
                        New Mentor With {.Nome = "Beatriz Lima", .ImagemCertificado = "certificados/historia_beatriz.png"},
                        New Mentor With {.Nome = "João Pereira", .ImagemCertificado = "certificados/historia_joao.png"}
                    }
                },
                New Materia With {
                    .Materia = "Física",
                    .Mentores = New List(Of Mentor) From {
                        New Mentor With {.Nome = "Lucas Andrade", .ImagemCertificado = "certificados/fisica_lucas.png"},
                        New Mentor With {.Nome = "Mariana Costa", .ImagemCertificado = "certificados/fisica_mariana.png"}
                    }
                }
            }

            
            rptMaterias.DataSource = dados
            rptMaterias.DataBind()
        End If
    End Sub
End Class
