using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vet_Cli_Web.Views;

namespace Vet_Cli_Web.Views
{
    public partial class Cliente : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.PreviousPage != null)
            {
                TextBox origem = (TextBox)Page.PreviousPage.FindControl("txtUser");
                if (origem != null)
                {
                    lblRg.Text = "RG: " + origem.Text;
                    using (var tb = new dbVeterinariaEntities())
                    {
                        //dados tutor
                        var resultado = tb.Clientes.Where(u => u.RgUsuario == origem.Text)
                             .Select(u => u.NomeComp)
                             .SingleOrDefault();
                        lblNome.Text = "Nome: " + resultado;

                        var cpf = tb.Clientes.Where(u => u.RgUsuario == origem.Text)
                             .Select(u => u.CPF)
                             .SingleOrDefault();
                        lblCpf.Text = "CPF: " + cpf;

                        var fone = tb.Clientes.Where(u => u.RgUsuario == origem.Text)
                             .Select(u => u.Telefone)
                             .SingleOrDefault();
                        lblFone.Text = "Telefone: " + fone;

                        //endereco
                        var cep = tb.Clientes.Where(u => u.RgUsuario == origem.Text)
                             .Select(u => u.Cep)
                             .SingleOrDefault();
                        lblCep.Text = "CEP: " + cep;

                        var uf = tb.Clientes.Where(u => u.RgUsuario == origem.Text)
                             .Select(u => u.UF)
                             .SingleOrDefault();
                        lblUf.Text = "UF: " + uf;

                        var cidade = tb.Clientes.Where(u => u.RgUsuario == origem.Text)
                             .Select(u => u.Cidade)
                             .SingleOrDefault();
                        lblCidade.Text = "Cidade: " + cidade;

                        var bairro = tb.Clientes.Where(u => u.RgUsuario == origem.Text)
                             .Select(u => u.Bairro)
                             .SingleOrDefault();
                        lblBairro.Text = "Bairro: " + bairro;

                        var rua = tb.Clientes.Where(u => u.RgUsuario == origem.Text)
                             .Select(u => u.Rua)
                             .SingleOrDefault();
                        lblRua.Text = "Rua: " + rua;

                        var num = tb.Clientes.Where(u => u.RgUsuario == origem.Text)
                             .Select(u => u.Numero)
                             .SingleOrDefault();
                        lblNumero.Text = "Nº: " + num;

                        var comp = tb.Clientes.Where(u => u.RgUsuario == origem.Text)
                             .Select(u => u.Complemento)
                             .SingleOrDefault();
                        lblComplemento.Text = "Complemento: " + comp;

                        var refe = tb.Clientes.Where(u => u.RgUsuario == origem.Text)
                             .Select(u => u.Referencia)
                             .SingleOrDefault();
                        lblReferencia.Text = "Referencia: " + refe;

                        //Informações Pet

                        var pet = tb.Pets.Where(u => u.RgUsuario == origem.Text)
                             .Select(u => u.NomePet)
                             .SingleOrDefault();
                        lblNomePet.Text = "Pet: " + pet;

                        var pcon = tb.Pets.Where(u => u.RgUsuario == origem.Text)
                             .Select(u => u.ProximaConsulta)
                             .SingleOrDefault();
                        lblPCon.Text = "P´roxima Consulta: " + pcon;

                        var hist = tb.Pets.Where(u => u.RgUsuario == origem.Text)
                             .Select(u => u.Historico)
                             .SingleOrDefault();
                        lblHistorico.Text = "Histórico: " + hist;

                        var rgvet = tb.Pets.Where(u => u.RgUsuario == origem.Text)
                             .Select(u => u.RgVet)
                             .SingleOrDefault();
                        lblRgVet.Text = "RG Vet: " + rgvet;

                        var vet = tb.Veterinarios.Where(u => u.RG == rgvet)
                             .Select(u => u.Nome)
                             .SingleOrDefault();
                        lblVet.Text = "Veterinário: " + vet;















                        //var resultado = from Pet in tb.Pets
                        //                join left in tb.Clientes
                        //                on Pet.RgUsuario equals left.RgUsuario
                        //                into leftOrder
                        //                from Cliente in leftOrder.DefaultIfEmpty()
                        //                where Pet.RgUsuario == origem.Text
                        //                join left in tb.Veterinarios

                        //                on Pet.RgVet equals left.RG
                        //                into leftOrder2
                        //                from Veterinario in leftOrder2.DefaultIfEmpty()
                        //                    //where Pet.RgVet == txtRgVet.Text
                        //                select new
                        //                {
                        //                    Cliente.NomeComp,
                        //                    Cliente.CPF,
                        //                    Cliente.Telefone,
                        //                    Cliente.Cep,
                        //                    Cliente.UF,
                        //                    Cliente.Cidade,
                        //                    Cliente.Bairro,
                        //                    Cliente.Rua,
                        //                    Cliente.Numero,
                        //                    Cliente.Complemento,
                        //                    Cliente.Referencia,

                        //                    Pet.NomePet,
                        //                    Pet.ProximaConsulta,
                        //                    Pet.Historico,
                        //                    Veterinario.RG,

                        //                };

                    }
                    
                }

            }



        }
    }
}