<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="ProjetoIsaque2.Login" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Área de Login - LosConecta</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
            width: 350px;
        }

        h2 {
            text-align: center;
            color: #2c3e50;
        }

        .btn {
            width: 100%;
            margin: 10px 0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h2>Área de Login</h2>
            <asp:Button ID="btnAdmin" runat="server" CssClass="btn" Text="Login Administrador" OnClick="btnAdmin_Click" />
            <asp:Button ID="btnAlunos" runat="server" CssClass="btn" Text="Login Aluno" OnClick="btnAlunos_Click" />
            <asp:Button ID="btnMentores" runat="server" CssClass="btn" Text="Login Mentor" OnClick="btnMentores_Click" />
        </div>
    </form>
</body>
</html>
