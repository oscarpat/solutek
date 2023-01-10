using CAD;
using System;

namespace web
{
    public partial class Formulario_web12 : System.Web.UI.Page
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
            decimal Valor = decimal.Parse(ValorTextBox.Text);
            float Stock = float.Parse(StockTextBox.Text);
            CADProducto.InsertProducto(
                DescripcionTextBox.Text,
                MarcaTextBox.Text,
                Valor,
                Stock);
            datosGridView.DataBind();
            mensajeLabel.Text = "Producto creado correctamente";
            DescripcionTextBox.Text = string.Empty;
            MarcaTextBox.Text = string.Empty;
            ValorTextBox.Text = string.Empty;
            StockTextBox.Text = string.Empty;
            DescripcionTextBox.Focus();

        }

        private bool validarcampos()
        {
            if (DescripcionTextBox.Text == string.Empty)
            {
                mensajeLabel.Text = "debe de ingresar una descrpción";
                DescripcionTextBox.Focus();
                return false;
            }
            if (MarcaTextBox.Text == string.Empty)
            {
                mensajeLabel.Text = "ingresar la marca";
                MarcaTextBox.Focus();
                return false;
            }
            if (ValorTextBox.Text == string.Empty)
            {
                mensajeLabel.Text = "debe de ingresar un valor";
                ValorTextBox.Focus();
                return false;
            }
            decimal valor;
            if (!decimal.TryParse(ValorTextBox.Text, out valor))
            {
                mensajeLabel.Text = "debe de ingresar un valor numerico";
                ValorTextBox.Focus();
                return false;
            }
            if (valor <= 0)
            {
                mensajeLabel.Text = "debe de ingresar un valor mayor a cero";
                ValorTextBox.Focus();
                return false;
            }
            if (StockTextBox.Text == string.Empty)
            {
                mensajeLabel.Text = "ingresar un stock";
                StockTextBox.Focus();
                return false;
            }
            float Stock;
            if (!float.TryParse(ValorTextBox.Text, out Stock))
            {
                mensajeLabel.Text = "debe de ingresar un stock numerico";
                StockTextBox.Focus();
                return false;
            }
            if (Stock < 0)
            {
                mensajeLabel.Text = "ingrese un stock positivo";
                StockTextBox.Focus();
                return false;
            }
            return true;
        }
    }
}