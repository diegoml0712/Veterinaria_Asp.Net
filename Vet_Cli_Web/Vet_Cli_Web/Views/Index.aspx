<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Vet_Cli_Web.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link href="\App_Themes\Css\StyleSheet2.css" rel="stylesheet" type="text/css" />

    <title>Portal do Tutor</title>

</head>
<body>
    <form id="form1" runat="server">

        <div class="container">

            <div class="box">
                <table border="0">
                    <tr>
                        <td>
                            <img src="Img/dog2.png" alt="logo" width='200' height='200' />

                        </td>
                        <td>
                            <h1>Portal do Tutor</h1>
                        </td>
                    </tr>
                </table>
                <div class="box2">

                    <table border="0" style="margin-left:180px">
                        <tr>
                            <td>
                                <img src="Img/user.png" alt="user:" width='24' height='24' />

                            </td>

                            <td>
                                <asp:TextBox ID="txtUser" runat="server" Width="137px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <img src="Img/cadeado2.png" alt="senha:" width='24' height='24' />
                            </td>

                            <td>
                                <asp:TextBox ID="txtSenha" TextMode="Password" runat="server" Width="137px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Button ID="btnEntrar" runat="server" Text="ENTRAR" OnClick="btnEntrar_Click" Style="height: 29px; width: 80px;" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblErros" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
