<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FaleConosco.aspx.vb" Inherits="ProjetoIsaque2.FaleConosco" %>

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
     <div Class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
  <div Class="flex justify-between items-center h-16">
 </div>
</div>
            <!-- Fale Conosco -->
<section Class="mb-16 max-w-3xl mx-auto" id="faleconosco">
 <h2 Class="text-3xl font-bold text-blue-700 mb-6 text-center">
  Fale Conosco
 </h2>
  <div>
                
    Nome
   </label>
   &nbsp;<asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
  </div>
  <div>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         <Label Class="block text-gray-700 font-semibold mb-1" for="emailRemetente">
    Email
   </label>
   &nbsp;<asp:TextBox ID="txtEmail" runat="server" Width="368px"></asp:TextBox>
  </div>
  <div>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 <Label Class="block text-gray-700 font-semibold mb-1" for="assunto">
    Assunto
   </label>
   &nbsp;<asp:TextBox ID="txtAssunto" runat="server" Width="350px"></asp:TextBox>
  </div>
  <div>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         <Label Class="block text-gray-700 font-semibold mb-1" for="mensagem">
    Mensagem
   </label>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         <asp:TextBox ID="txtMensagem" runat="server" Width="343px"></asp:TextBox>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         <asp:Button ID="Button1" runat="server" Text="Enviar" Width="188px" />
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IsaqueBDConnectionString %>" DeleteCommand="DELETE FROM [FaleConosco] WHERE [IDMensagem] = @original_IDMensagem AND [NomeRemetente] = @original_NomeRemetente AND [EmailRemetente] = @original_EmailRemetente AND [Assunto] = @original_Assunto AND [Mensagem] = @original_Mensagem" InsertCommand="INSERT INTO [FaleConosco] ([NomeRemetente], [EmailRemetente], [Assunto], [Mensagem]) VALUES (@NomeRemetente, @EmailRemetente, @Assunto, @Mensagem)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [FaleConosco]" UpdateCommand="UPDATE [FaleConosco] SET [NomeRemetente] = @NomeRemetente, [EmailRemetente] = @EmailRemetente, [Assunto] = @Assunto, [Mensagem] = @Mensagem WHERE [IDMensagem] = @original_IDMensagem AND [NomeRemetente] = @original_NomeRemetente AND [EmailRemetente] = @original_EmailRemetente AND [Assunto] = @original_Assunto AND [Mensagem] = @original_Mensagem">
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             <DeleteParameters>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         </asp:GridView>
  </div>
</section>


        </div>
    </form>
     </form>
</body>
</html>

