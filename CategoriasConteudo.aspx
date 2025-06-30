<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CategoriasConteudo.aspx.vb" Inherits="ProjetoIsaque2.CategoriaConteudo" %>

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
            <table style="width: 100%;">
                <tr>
                    <td>Categoria<asp:TextBox ID="txtCategoria" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>NomeCategoria<asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">DescriçãoCategoria<asp:TextBox ID="txtDescricao" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1"></td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Enviar" />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IsaqueBDConnectionString %>" DeleteCommand="DELETE FROM [CategoriasConteudo] WHERE [IDCategoria] = @original_IDCategoria AND (([NomeCategoria] = @original_NomeCategoria) OR ([NomeCategoria] IS NULL AND @original_NomeCategoria IS NULL)) AND (([DescricaoCategoria] = @original_DescricaoCategoria) OR ([DescricaoCategoria] IS NULL AND @original_DescricaoCategoria IS NULL))" InsertCommand="INSERT INTO [CategoriasConteudo] ([IDCategoria], [NomeCategoria], [DescricaoCategoria]) VALUES (@IDCategoria, @NomeCategoria, @DescricaoCategoria)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CategoriasConteudo]" UpdateCommand="UPDATE [CategoriasConteudo] SET [NomeCategoria] = @NomeCategoria, [DescricaoCategoria] = @DescricaoCategoria WHERE [IDCategoria] = @original_IDCategoria AND (([NomeCategoria] = @original_NomeCategoria) OR ([NomeCategoria] IS NULL AND @original_NomeCategoria IS NULL)) AND (([DescricaoCategoria] = @original_DescricaoCategoria) OR ([DescricaoCategoria] IS NULL AND @original_DescricaoCategoria IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_IDCategoria" Type="Int32" />
                                <asp:Parameter Name="original_NomeCategoria" Type="String" />
                                <asp:Parameter Name="original_DescricaoCategoria" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="txtCategoria" Name="IDCategoria" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="txtNome" Name="NomeCategoria" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtDescricao" Name="DescricaoCategoria" PropertyName="Text" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="NomeCategoria" Type="String" />
                                <asp:Parameter Name="DescricaoCategoria" Type="String" />
                                <asp:Parameter Name="original_IDCategoria" Type="Int32" />
                                <asp:Parameter Name="original_NomeCategoria" Type="String" />
                                <asp:Parameter Name="original_DescricaoCategoria" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IDCategoria" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                                <asp:BoundField DataField="IDCategoria" HeaderText="IDCategoria" ReadOnly="True" SortExpression="IDCategoria" />
                                <asp:BoundField DataField="NomeCategoria" HeaderText="NomeCategoria" SortExpression="NomeCategoria" />
                                <asp:BoundField DataField="DescricaoCategoria" HeaderText="DescricaoCategoria" SortExpression="DescricaoCategoria" />
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
