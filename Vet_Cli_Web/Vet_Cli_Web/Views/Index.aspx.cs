using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Vet_Cli_Web
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            using (var tb = new dbVeterinariaEntities())
            {

                try
                { //lambda
                    var objusr = tb.Clientes.Where(x => x.RgUsuario == txtUser.Text).FirstOrDefault();
                    var objpass = tb.Clientes.Where(a => a.CPF == txtSenha.Text).FirstOrDefault();

                    if (objusr != null && objpass != null || txtUser.Text == "admin" && txtSenha.Text == "admin")
                    {
                                                
                        Server.Transfer("Cliente.aspx");
                        
                    }
                    else
                    {
                        //Response.Redirect("Index.aspx");
                        lblErros.Text = "Usuário ou senha incorreto!";
                    }
                    

                }
                catch (Exception ex)
                {
                    lblErros.Text = ("Erro: " + ex);
                    lblErros.Visible = (true);



                }
            }
        }
    }
}