<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AgendamentosEncontro.aspx.vb" Inherits="ProjetoIsaque2.AgendamentosEncontro" %>

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
                    <td>Mentor<asp:TextBox ID="txtMentor" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>DataHoraEncontro<asp:TextBox ID="txtData" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>LinkMeet<asp:TextBox ID="txtMeet" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>verificado<asp:TextBox ID="txtVerificado" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Agendar" />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IsaqueBDConnectionString %>" DeleteCommand="DELETE FROM [AgendamentosEncontro] WHERE [IDAgendamento] = @original_IDAgendamento AND [IDAluno] = @original_IDAluno AND [IDMentor] = @original_IDMentor AND [DataHoraEncontro] = @original_DataHoraEncontro AND (([LinkMeet] = @original_LinkMeet) OR ([LinkMeet] IS NULL AND @original_LinkMeet IS NULL)) AND [verificado] = @original_verificado" InsertCommand="INSERT INTO [AgendamentosEncontro] ([IDAluno], [IDMentor], [DataHoraEncontro], [LinkMeet], [verificado]) VALUES (@IDAluno, @IDMentor, @DataHoraEncontro, @LinkMeet, @verificado)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [AgendamentosEncontro]" UpdateCommand="UPDATE [AgendamentosEncontro] SET [IDAluno] = @IDAluno, [IDMentor] = @IDMentor, [DataHoraEncontro] = @DataHoraEncontro, [LinkMeet] = @LinkMeet, [verificado] = @verificado WHERE [IDAgendamento] = @original_IDAgendamento AND [IDAluno] = @original_IDAluno AND [IDMentor] = @original_IDMentor AND [DataHoraEncontro] = @original_DataHoraEncontro AND (([LinkMeet] = @original_LinkMeet) OR ([LinkMeet] IS NULL AND @original_LinkMeet IS NULL)) AND [verificado] = @original_verificado">
                            <DeleteParameters>
                                <asp:Parameter Name="original_IDAgendamento" Type="Int32" />
                                <asp:Parameter Name="original_IDAluno" Type="Int32" />
                                <asp:Parameter Name="original_IDMentor" Type="Int32" />
                                <asp:Parameter Name="original_DataHoraEncontro" Type="DateTime" />
                                <asp:Parameter Name="original_LinkMeet" Type="String" />
                                <asp:Parameter Name="original_verificado" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="txtAluno" Name="IDAluno" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="txtMentor" Name="IDMentor" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="txtData" Name="DataHoraEncontro" PropertyName="Text" Type="DateTime" />
                                <asp:ControlParameter ControlID="txtMeet" Name="LinkMeet" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtVerificado" Name="verificado" PropertyName="Text" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="IDAluno" Type="Int32" />
                                <asp:Parameter Name="IDMentor" Type="Int32" />
                                <asp:Parameter Name="DataHoraEncontro" Type="DateTime" />
                                <asp:Parameter Name="LinkMeet" Type="String" />
                                <asp:Parameter Name="verificado" Type="String" />
                                <asp:Parameter Name="original_IDAgendamento" Type="Int32" />
                                <asp:Parameter Name="original_IDAluno" Type="Int32" />
                                <asp:Parameter Name="original_IDMentor" Type="Int32" />
                                <asp:Parameter Name="original_DataHoraEncontro" Type="DateTime" />
                                <asp:Parameter Name="original_LinkMeet" Type="String" />
                                <asp:Parameter Name="original_verificado" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IDAgendamento" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                                <asp:BoundField DataField="IDAgendamento" HeaderText="IDAgendamento" InsertVisible="False" ReadOnly="True" SortExpression="IDAgendamento" />
                                <asp:BoundField DataField="IDAluno" HeaderText="IDAluno" SortExpression="IDAluno" />
                                <asp:BoundField DataField="IDMentor" HeaderText="IDMentor" SortExpression="IDMentor" />
                                <asp:BoundField DataField="DataHoraEncontro" HeaderText="DataHoraEncontro" SortExpression="DataHoraEncontro" />
                                <asp:BoundField DataField="LinkMeet" HeaderText="LinkMeet" SortExpression="LinkMeet" />
                                <asp:BoundField DataField="verificado" HeaderText="verificado" SortExpression="verificado" />
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
