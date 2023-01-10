<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Producto.aspx.cs" Inherits="web.Formulario_web12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Productos</h3>
    <table class="nav-justified" style="width: 33%; margin-left: 395px;">
        <tr>
            <td class="modal-sm" style="width: 101px">Descripción</td>
            <td style="width: 396px">
                <asp:TextBox ID="DescripcionTextBox" runat="server" Width="200px" ForeColor="Red"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 101px">Marca</td>
            <td style="width: 396px">
                <asp:TextBox ID="MarcaTextBox" runat="server" Width="200px" ForeColor="Red"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 101px">Valor</td>
            <td style="width: 396px">
                <asp:TextBox ID="ValorTextBox" runat="server" Width="200px" ForeColor="Red"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 101px">Stock</td>
            <td style="width: 396px">
                <asp:TextBox ID="StockTextBox" runat="server" Width="200px" ForeColor="Red"></asp:TextBox>
            </td>
        </tr>
    </table>
    <p>
        <strong><asp:Label ID="mensajeLabel" style="margin-left:395px; font-size: large; color: #FF0000;" runat="server"></asp:Label></strong></p>
    <p>
        <asp:Button ID="guardarButton" CssClass="guardar" runat="server" Text="Guardar" OnClick="guardarButton_Click" />
    </p>
    <p>
        <asp:GridView ID="datosGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="IDProducto" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="688px" style="margin-left: 241px">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="IDProducto" HeaderText="ID Producto" ReadOnly="True" SortExpression="IDProducto" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripción" SortExpression="Descripcion" />
                <asp:BoundField DataField="Marca" HeaderText="Marca" SortExpression="Marca" />
                <asp:BoundField DataField="Valor" DataFormatString="{0:C2}" HeaderText="Valor" SortExpression="Valor">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="Stock" DataFormatString="{0:N2}" HeaderText="Stock" SortExpression="Stock">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Red" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaulConnetion %>" DeleteCommand="DELETE FROM [Producto] WHERE [IDProducto] = @IDProducto" InsertCommand="INSERT INTO [Producto] ([Descripcion], [Marca], [Valor], [Stock]) VALUES (@Descripcion, @Marca, @Valor, @Stock)" ProviderName="<%$ ConnectionStrings:DefaulConnetion.ProviderName %>" SelectCommand="SELECT [IDProducto], [Descripcion], [Marca], [Valor], [Stock] FROM [Producto]" UpdateCommand="UPDATE [Producto] SET [Descripcion] = @Descripcion, [Marca] = @Marca, [Valor] = @Valor, [Stock] = @Stock WHERE [IDProducto] = @IDProducto">
            <DeleteParameters>
                <asp:Parameter Name="IDProducto" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Descripcion" Type="String" />
                <asp:Parameter Name="Marca" Type="String" />
                <asp:Parameter Name="Valor" Type="Decimal" />
                <asp:Parameter Name="Stock" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Descripcion" Type="String" />
                <asp:Parameter Name="Marca" Type="String" />
                <asp:Parameter Name="Valor" Type="Decimal" />
                <asp:Parameter Name="Stock" Type="Double" />
                <asp:Parameter Name="IDProducto" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
