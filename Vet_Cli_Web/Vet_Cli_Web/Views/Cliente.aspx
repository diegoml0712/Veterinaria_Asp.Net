<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cliente.aspx.cs" Inherits="Vet_Cli_Web.Views.Cliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link href="\App_Themes\Css\Cliente.css" rel="stylesheet" type="text/css" />

    <title>Portal do Tutor</title>

</head>
<body>
    <form id="form1" runat="server">

        <div class="container">
            <div class="tabela">
                <table>
                    <tr>
                        <td>
                            <img src="Img/dog2.png" alt="logo" width='200' height='200' />
                        </td>
                        <td>
                            <h1>Bem vindo ao portal do tutor!</h1>
                        </td>
                        <td style="width:250px; text-align:right">
                            <asp:HyperLink ID="Home" runat="server" Text="Home" Visible="True" NavigateUrl="~/Views/Index.aspx" ImageUrl="~/Views/Img/sair.png">Sair</asp:HyperLink>
                        </td>
                    </tr>
                </table>
                <table style="width: 1000px; border: solid; border-width: 2px; background-color: lightsteelblue">
                    <%--dados tutor--%>
                    <tr>
                        <td colspan="8">
                            <h2>Dados do Tutor</h2>
                        </td>
                    </tr>
                    <tr style="height: 70px">
                        <td>
                            <asp:Label ID="lblNome" runat="server" Text="Nome"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblRg" runat="server" Text="RG"></asp:Label>

                        </td>
                        <td>
                            <asp:Label ID="lblCpf" runat="server" Text="CPF"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblFone" runat="server" Text="Telefone"></asp:Label>

                        </td>
                    </tr>
                    <%--Endereco--%>
                    <tr>
                        <td colspan="8" style="border-top: solid; border-width: 1px;">
                            <h2>Endereço</h2>
                        </td>
                    </tr>
                    <tr style="height: 70px">
                        <td>
                            <asp:Label ID="lblRua" runat="server" Text="Rua"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblNumero" runat="server" Text="Nº"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblBairro" runat="server" Text="Bairro"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblComplemento" runat="server" Text="Complemento"></asp:Label>
                        </td>
                    </tr>

                    <tr style="height: 70px">
                        <td>
                            <asp:Label ID="lblCidade" runat="server" Text="Cidade"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblUf" runat="server" Text="UF"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblCep" runat="server" Text="CEP"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblReferencia" runat="server" Text="Referencia"></asp:Label>
                        </td>
                    </tr>
                    <%-- Informacoes do Pet--%>
                    <tr>
                        <td colspan="8" style="border-top: solid; border-width: 1px;">
                            <h2>Informações do Pet</h2>
                        </td>
                    </tr>
                    <tr style="height: 70px">
                        <td>
                            <asp:Label ID="lblNomePet" runat="server" Text="NomePet"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblPCon" runat="server" Text="ProximaCon"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblRgVet" runat="server" Text="RgVet"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblVet" runat="server" Text="NomeVet"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="8" class="historico">
                            <asp:Label ID="lblHistorico" runat="server" Text="Historico"></asp:Label>
                        </td>
                    </tr>

                </table>
            </div>

        </div>
    </form>
</body>
</html>
