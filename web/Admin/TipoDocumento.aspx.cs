using CAD;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web
{
    public partial class Formulario_web17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void guardarButton_Click(object sender, EventArgs e)
        {
            if (!validarcampos()) return;
            CADTipoDocumento.InsertTipoDocumento(
                DescripcionTextBox.Text);
            datosGridView.DataBind();
            mensajeLabel.Text = "Documento creado con exito";
            DescripcionTextBox.Text = string.Empty;
            DescripcionTextBox.Focus();
        }

        private bool validarcampos()
        {
            if (DescripcionTextBox.Text == string.Empty)
            {
                mensajeLabel.Text = "debe de ingresar una descripción";
                DescripcionTextBox.Focus();
                return false;
            }
            return true;
        }
    }
}