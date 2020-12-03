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
                    </tr>
                </table>
           
                <br />
                <table style="width: 800px">
                    <%--dados tutor--%>
                    <tr>
                        <td>
                            <asp:Label ID="lblNome" runat="server" Text=""></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblRg" runat="server" Text=""></asp:Label>

                        </td>
                        <td>
                            <asp:Label ID="lblCpf" runat="server" Text=""></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblFone" runat="server" Text=""></asp:Label>

                        </td>
                    </tr>
                    <%--Endereco--%>
                    <tr>
                        <td>
                            <asp:Label ID="lblCep" runat="server" Text=""></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblUf" runat="server" Text=""></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblCidade" runat="server" Text=""></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblBairro" runat="server" Text=""></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblRua" runat="server" Text=""></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblNumero" runat="server" Text=""></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblComplemento" runat="server" Text=""></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblReferencia" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <%-- Informacoes do Pet--%>
                    <tr>
                        <td>
                            <asp:Label ID="lblNomePet" runat="server" Text=""></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblPCon" runat="server" Text=""></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblHistorico" runat="server" Text=""></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblRgVet" runat="server" Text=""></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblVet" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
