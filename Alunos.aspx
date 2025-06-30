<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Alunos.aspx.vb" Inherits="ProjetoIsaque2.Alunos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f3f4f6;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 900px;
            margin: 50px auto;
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #1e3a8a;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: 600;
            margin-bottom: 6px;
            color: #374151;
        }

        input[type="text"], .aspNet-TextBox {
            width: 100%;
            padding: 10px;
            border: 1px solid #d1d5db;
            border-radius: 5px;
            font-size: 14px;
        }

        .btn {
            background-color: #2563eb;
            color: white;
            padding: 10px 24px;
            border: none;
            border-radius: 5px;
            font-weight: bold;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #1d4ed8;
        }

        .gridview {
            margin-top: 30px;
            width: 100%;
            border-collapse: collapse;
        }

        .gridview th, .gridview td {
            border: 1px solid #e5e7eb;
            padding: 10px;
            text-align: left;
        }

        .gridview th {
            background-color: #2563eb;
            color: white;
        }

        .gridview tr:nth-child(even) {
            background-color: #f9fafb;
        }

        .gridview tr:hover {
            background-color: #e0f2fe;
        }
    </style>

    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td>Aluno<asp:TextBox ID="txtAluno" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Nome<asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1"></td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td>Idade<asp:TextBox ID="txtIdade" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Email<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1"></td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td>Comunidade<asp:TextBox ID="txtComuniade" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Turma<asp:TextBox ID="txtTurma" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Cadastrar" />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IsaqueBDConnectionString %>" DeleteCommand="DELETE FROM [Alunos] WHERE [IDAluno] = @original_IDAluno AND (([Nome] = @original_Nome) OR ([Nome] IS NULL AND @original_Nome IS NULL)) AND (([Idade] = @original_Idade) OR ([Idade] IS NULL AND @original_Idade IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Comunidade] = @original_Comunidade) OR ([Comunidade] IS NULL AND @original_Comunidade IS NULL)) AND (([Turma] = @original_Turma) OR ([Turma] IS NULL AND @original_Turma IS NULL))" InsertCommand="INSERT INTO [Alunos] ([IDAluno], [Nome], [Idade], [Email], [Comunidade], [Turma]) VALUES (@IDAluno, @Nome, @Idade, @Email, @Comunidade, @Turma)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Alunos]" UpdateCommand="UPDATE [Alunos] SET [Nome] = @Nome, [Idade] = @Idade, [Email] = @Email, [Comunidade] = @Comunidade, [Turma] = @Turma WHERE [IDAluno] = @original_IDAluno AND (([Nome] = @original_Nome) OR ([Nome] IS NULL AND @original_Nome IS NULL)) AND (([Idade] = @original_Idade) OR ([Idade] IS NULL AND @original_Idade IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Comunidade] = @original_Comunidade) OR ([Comunidade] IS NULL AND @original_Comunidade IS NULL)) AND (([Turma] = @original_Turma) OR ([Turma] IS NULL AND @original_Turma IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_IDAluno" Type="Int32" />
                                <asp:Parameter Name="original_Nome" Type="String" />
                                <asp:Parameter Name="original_Idade" Type="Int32" />
                                <asp:Parameter Name="original_Email" Type="String" />
                                <asp:Parameter Name="original_Comunidade" Type="String" />
                                <asp:Parameter Name="original_Turma" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="txtAluno" Name="IDAluno" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="txtNome" Name="Nome" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtIdade" Name="Idade" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="txtEmail" Name="Email" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtComuniade" Name="Comunidade" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtTurma" Name="Turma" PropertyName="Text" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Nome" Type="String" />
                                <asp:Parameter Name="Idade" Type="Int32" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Comunidade" Type="String" />
                                <asp:Parameter Name="Turma" Type="String" />
                                <asp:Parameter Name="original_IDAluno" Type="Int32" />
                                <asp:Parameter Name="original_Nome" Type="String" />
                                <asp:Parameter Name="original_Idade" Type="Int32" />
                                <asp:Parameter Name="original_Email" Type="String" />
                                <asp:Parameter Name="original_Comunidade" Type="String" />
                                <asp:Parameter Name="original_Turma" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IDAluno" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                                <asp:BoundField DataField="IDAluno" HeaderText="IDAluno" ReadOnly="True" SortExpression="IDAluno" />
                                <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                                <asp:BoundField DataField="Idade" HeaderText="Idade" SortExpression="Idade" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="Comunidade" HeaderText="Comunidade" SortExpression="Comunidade" />
                                <asp:BoundField DataField="Turma" HeaderText="Turma" SortExpression="Turma" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
