<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Certificados.aspx.vb" Inherits="ProjetoIsaque2.Certificados" %>



<!DOCTYPE html>
<html lang="pt-BR">
<head runat="server">
    <meta charset="utf-8" />
    <title>Área de Certificados dos Mentores</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">
    <form id="form1" runat="server">
        <div class="max-w-6xl mx-auto py-10 px-6">
            <h1 class="text-3xl font-bold text-blue-700 mb-8 text-center">Certificados de Mentores por Matéria</h1>

            <asp:Repeater ID="rptMaterias" runat="server">
                <ItemTemplate>
                    <div class="mb-10 bg-white p-6 rounded shadow">
                        <h2 class="text-2xl font-semibold text-gray-800 mb-5"><%# Eval("Materia") %></h2>
                        
                        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-6">
                            <asp:Repeater ID="rptMentores" runat="server" DataSource='<%# Eval("Mentores") %>'>
                                <ItemTemplate>
                                    <div class="border rounded-lg shadow hover:shadow-lg transition bg-gray-50 p-4">
                                        <img src='<%# Eval("ImagemCertificado") %>' alt="Certificado de <%# Eval("Nome") %>"
                                             class="w-full h-48 object-contain border mb-3 rounded" />
                                        <h3 class="text-lg font-semibold text-gray-700 mb-2"><%# Eval("Nome") %></h3>
                                        <a href='<%# Eval("ImagemCertificado") %>' download
                                           class="bg-blue-600 text-white px-3 py-1 rounded hover:bg-blue-700">
                                            Baixar Certificado
                                        </a>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
