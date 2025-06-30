<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Conteudos.aspx.vb" Inherits="ProjetoIsaque2.Conteudos" %>

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
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td>Conteudo<asp:TextBox ID="txtConteudo" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Titulo<asp:TextBox ID="txtTitulo" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Descrição<asp:TextBox ID="txtDescricao" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1"></td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td class="auto-style1">Formato<asp:TextBox ID="txtFormato" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Fixa Etaria Minima<asp:TextBox ID="txtminima" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Faixa Etaria Maxima<asp:TextBox ID="txtmaxima" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Area Conhecimento<asp:TextBox ID="txtconhecimento" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Url Arquivo<asp:TextBox ID="txtUrl" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="Button1" runat="server" Text="Acessar" />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IsaqueBDConnectionString %>" DeleteCommand="DELETE FROM [Conteudos] WHERE [IDConteudo] = @original_IDConteudo AND (([Titulo] = @original_Titulo) OR ([Titulo] IS NULL AND @original_Titulo IS NULL)) AND (([Descricao] = @original_Descricao) OR ([Descricao] IS NULL AND @original_Descricao IS NULL)) AND (([Formato] = @original_Formato) OR ([Formato] IS NULL AND @original_Formato IS NULL)) AND (([FaixaEtariaMinima] = @original_FaixaEtariaMinima) OR ([FaixaEtariaMinima] IS NULL AND @original_FaixaEtariaMinima IS NULL)) AND (([FaixaEtariaMaxima] = @original_FaixaEtariaMaxima) OR ([FaixaEtariaMaxima] IS NULL AND @original_FaixaEtariaMaxima IS NULL)) AND (([AreaConhecimento] = @original_AreaConhecimento) OR ([AreaConhecimento] IS NULL AND @original_AreaConhecimento IS NULL)) AND (([URLArquivo] = @original_URLArquivo) OR ([URLArquivo] IS NULL AND @original_URLArquivo IS NULL))" InsertCommand="INSERT INTO [Conteudos] ([IDConteudo], [Titulo], [Descricao], [Formato], [FaixaEtariaMinima], [FaixaEtariaMaxima], [AreaConhecimento], [URLArquivo]) VALUES (@IDConteudo, @Titulo, @Descricao, @Formato, @FaixaEtariaMinima, @FaixaEtariaMaxima, @AreaConhecimento, @URLArquivo)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Conteudos]" UpdateCommand="UPDATE [Conteudos] SET [Titulo] = @Titulo, [Descricao] = @Descricao, [Formato] = @Formato, [FaixaEtariaMinima] = @FaixaEtariaMinima, [FaixaEtariaMaxima] = @FaixaEtariaMaxima, [AreaConhecimento] = @AreaConhecimento, [URLArquivo] = @URLArquivo WHERE [IDConteudo] = @original_IDConteudo AND (([Titulo] = @original_Titulo) OR ([Titulo] IS NULL AND @original_Titulo IS NULL)) AND (([Descricao] = @original_Descricao) OR ([Descricao] IS NULL AND @original_Descricao IS NULL)) AND (([Formato] = @original_Formato) OR ([Formato] IS NULL AND @original_Formato IS NULL)) AND (([FaixaEtariaMinima] = @original_FaixaEtariaMinima) OR ([FaixaEtariaMinima] IS NULL AND @original_FaixaEtariaMinima IS NULL)) AND (([FaixaEtariaMaxima] = @original_FaixaEtariaMaxima) OR ([FaixaEtariaMaxima] IS NULL AND @original_FaixaEtariaMaxima IS NULL)) AND (([AreaConhecimento] = @original_AreaConhecimento) OR ([AreaConhecimento] IS NULL AND @original_AreaConhecimento IS NULL)) AND (([URLArquivo] = @original_URLArquivo) OR ([URLArquivo] IS NULL AND @original_URLArquivo IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_IDConteudo" Type="Int32" />
                                <asp:Parameter Name="original_Titulo" Type="String" />
                                <asp:Parameter Name="original_Descricao" Type="String" />
                                <asp:Parameter Name="original_Formato" Type="String" />
                                <asp:Parameter Name="original_FaixaEtariaMinima" Type="Int32" />
                                <asp:Parameter Name="original_FaixaEtariaMaxima" Type="Int32" />
                                <asp:Parameter Name="original_AreaConhecimento" Type="String" />
                                <asp:Parameter Name="original_URLArquivo" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="txtConteudo" Name="IDConteudo" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="txtTitulo" Name="Titulo" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtDescricao" Name="Descricao" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtFormato" Name="Formato" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtminima" Name="FaixaEtariaMinima" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="txtmaxima" Name="FaixaEtariaMaxima" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="txtconhecimento" Name="AreaConhecimento" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtUrl" Name="URLArquivo" PropertyName="Text" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Titulo" Type="String" />
                                <asp:Parameter Name="Descricao" Type="String" />
                                <asp:Parameter Name="Formato" Type="String" />
                                <asp:Parameter Name="FaixaEtariaMinima" Type="Int32" />
                                <asp:Parameter Name="FaixaEtariaMaxima" Type="Int32" />
                                <asp:Parameter Name="AreaConhecimento" Type="String" />
                                <asp:Parameter Name="URLArquivo" Type="String" />
                                <asp:Parameter Name="original_IDConteudo" Type="Int32" />
                                <asp:Parameter Name="original_Titulo" Type="String" />
                                <asp:Parameter Name="original_Descricao" Type="String" />
                                <asp:Parameter Name="original_Formato" Type="String" />
                                <asp:Parameter Name="original_FaixaEtariaMinima" Type="Int32" />
                                <asp:Parameter Name="original_FaixaEtariaMaxima" Type="Int32" />
                                <asp:Parameter Name="original_AreaConhecimento" Type="String" />
                                <asp:Parameter Name="original_URLArquivo" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IDConteudo" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                                <asp:BoundField DataField="IDConteudo" HeaderText="IDConteudo" ReadOnly="True" SortExpression="IDConteudo" />
                                <asp:BoundField DataField="Titulo" HeaderText="Titulo" SortExpression="Titulo" />
                                <asp:BoundField DataField="Descricao" HeaderText="Descricao" SortExpression="Descricao" />
                                <asp:BoundField DataField="Formato" HeaderText="Formato" SortExpression="Formato" />
                                <asp:BoundField DataField="FaixaEtariaMinima" HeaderText="FaixaEtariaMinima" SortExpression="FaixaEtariaMinima" />
                                <asp:BoundField DataField="FaixaEtariaMaxima" HeaderText="FaixaEtariaMaxima" SortExpression="FaixaEtariaMaxima" />
                                <asp:BoundField DataField="AreaConhecimento" HeaderText="AreaConhecimento" SortExpression="AreaConhecimento" />
                                <asp:BoundField DataField="URLArquivo" HeaderText="URLArquivo" SortExpression="URLArquivo" />
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
                    <td class="auto-style1">&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
