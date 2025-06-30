<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ProfessoresMentores.aspx.vb" Inherits="ProjetoIsaque2.ProfessoresMentores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
                    <td class="auto-style1"></td>
                    <td class="auto-style1"></td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td>Nome<asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Email<asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Enviar" />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IsaqueBDConnectionString %>" DeleteCommand="DELETE FROM [ProfessoresMentores] WHERE [IDMentor] = @original_IDMentor AND [Nome] = @original_Nome AND [Email] = @original_Email" InsertCommand="INSERT INTO [ProfessoresMentores] ([Nome], [Email]) VALUES (@Nome, @Email)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ProfessoresMentores]" UpdateCommand="UPDATE [ProfessoresMentores] SET [Nome] = @Nome, [Email] = @Email WHERE [IDMentor] = @original_IDMentor AND [Nome] = @original_Nome AND [Email] = @original_Email">
                            <DeleteParameters>
                                <asp:Parameter Name="original_IDMentor" Type="Int32" />
                                <asp:Parameter Name="original_Nome" Type="String" />
                                <asp:Parameter Name="original_Email" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="txtNome" Name="Nome" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="TxtEmail" Name="Email" PropertyName="Text" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Nome" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="original_IDMentor" Type="Int32" />
                                <asp:Parameter Name="original_Nome" Type="String" />
                                <asp:Parameter Name="original_Email" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IDMentor" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                                <asp:BoundField DataField="IDMentor" HeaderText="IDMentor" InsertVisible="False" ReadOnly="True" SortExpression="IDMentor" />
                                <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
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
