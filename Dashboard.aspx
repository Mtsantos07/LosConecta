<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Dashboard.aspx.vb" Inherits="ProjetoIsaque2.Dashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Dashboard - LosConecta</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f4f8;
            padding: 40px;
        }

        .container {
            background-color: white;
            border-radius: 8px;
            padding: 30px;
            max-width: 600px;
            margin: 0 auto;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }

        .title {
            font-size: 24px;
            font-weight: bold;
            color: #2c3e50;
            margin-bottom: 20px;
        }

        .info {
            font-size: 18px;
            margin-bottom: 10px;
        }

        .logout {
            margin-top: 30px;
        }

        .btn-link {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        .btn-link:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="title">Bem-vindo ao Los Conecta</div>

            <asp:Label ID="lblNome" runat="server" CssClass="info" Text="Usuário: Fulano" />
            <br />
            <asp:Label ID="lblTipo" runat="server" CssClass="info" Text="Tipo: Aluno" />

            <div>
               <a href="index.aspx" class="btn-link">Ir para Início</a>

            </div>

            <div class="logout">
                <asp:Button ID="btnLogout" runat="server" Text="Sair" OnClick="btnLogout_Click" />
            </div>
        </div>
    </form>
</body>
</html>
