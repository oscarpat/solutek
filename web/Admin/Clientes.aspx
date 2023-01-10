<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="web.Formulario_web13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Cliente</h3>
    <table class="nav-justified" style="width: 89%">
        <tr>
            <td style="width: 129px">Clientes</td>
            <td style="width: 230px">
                <asp:TextBox ID="ClienteTextBox" runat="server"></asp:TextBox>
            </td>
            <td style="width: 130px">Tipo Documento</td>
            <td style="width: 313px">
                <asp:DropDownList ID="TipoDocumentoDropDownList" runat="server" DataSourceID="TipoDocumentoSqlDataSource" DataTextField="Descripcion" DataValueField="IDTipoDocumento">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 129px">Documento</td>
            <td style="width: 230px">
                <asp:TextBox ID="DocumentoTextBox" runat="server"></asp:TextBox>
            </td>
            <td style="width: 130px">Nombre</td>
            <td style="width: 313px">
                <asp:TextBox ID="NombreTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 129px">Apellido</td>
            <td style="width: 230px">
                <asp:TextBox ID="ApellidoTextBox" runat="server"></asp:TextBox>
            </td>
            <td style="width: 130px">Dirección</td>
            <td style="width: 313px">
                <asp:TextBox ID="DireccionTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 129px">Telefono</td>
            <td style="width: 230px">
                <asp:TextBox ID="TelefonoTextBox" runat="server"></asp:TextBox>
            </td>
            <td style="width: 130px">Correo</td>
            <td style="width: 313px">
                <asp:TextBox ID="CorreoTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 129px">Fecha Nacimiento</td>
            <td style="width: 230px">
                <asp:TextBox ID="FechaNacimientoTextBox" runat="server"></asp:TextBox>
            </td>
            <td style="width: 130px">Usuario</td>
            <td style="width: 313px">
                <asp:DropDownList ID="UsuarioDropDownList" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
    </table><br />
     <p>
        <asp:Label ID="mensajeLabel" style="margin-left:395px; font-size: large; color: #FF0000;" runat="server"></asp:Label></p>
    <p>
        <asp:Button ID="guardarButton" class="guardar" CssClass="guardar" runat="server" Text="Guardar" OnClick="guardarButton_Click" />
    </p>
    <p>
        <asp:GridView ID="datosGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" CellSpacing="2" DataKeyNames="IDCliente" DataSourceID="ClienteSqlDataSource" EmptyDataText="No hay registros de datos para mostrar." ForeColor="Black">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="IDCliente" HeaderText="ID Cliente" ReadOnly="True" SortExpression="IDCliente" />
                <asp:BoundField DataField="IDTipoDocumento" HeaderText="Tipo Documento" SortExpression="IDTipoDocumento" />
                <asp:BoundField DataField="Documento" HeaderText="Documento" SortExpression="Documento" />
                <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
                <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                <asp:BoundField DataField="Direccion" HeaderText="Dirección" SortExpression="Direccion" />
                <asp:BoundField DataField="TelefonoCelular" HeaderText="Telefono Celular" SortExpression="TelefonoCelular" />
                <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                <asp:BoundField DataField="FechaNacimiento" HeaderText="Fecha Nacimiento" SortExpression="FechaNacimiento" />
                <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
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
        <asp:SqlDataSource ID="ClienteSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:DefaulConnetion %>" DeleteCommand="DELETE FROM [Cliente] WHERE [IDCliente] = @IDCliente" InsertCommand="INSERT INTO [Cliente] ([IDTipoDocumento], [Documento], [Nombres], [Apellidos], [Direccion], [TelefonoCelular], [Correo], [FechaNacimiento], [Usuario]) VALUES (@IDTipoDocumento, @Documento, @Nombres, @Apellidos, @Direccion, @TelefonoCelular, @Correo, @FechaNacimiento, @Usuario)" ProviderName="<%$ ConnectionStrings:DefaulConnetion.ProviderName %>" SelectCommand="SELECT [IDCliente], [IDTipoDocumento], [Documento], [Nombres], [Apellidos], [Direccion], [TelefonoCelular], [Correo], [FechaNacimiento], [Usuario] FROM [Cliente]" UpdateCommand="UPDATE [Cliente] SET [IDTipoDocumento] = @IDTipoDocumento, [Documento] = @Documento, [Nombres] = @Nombres, [Apellidos] = @Apellidos, [Direccion] = @Direccion, [TelefonoCelular] = @TelefonoCelular, [Correo] = @Correo, [FechaNacimiento] = @FechaNacimiento, [Usuario] = @Usuario WHERE [IDCliente] = @IDCliente">
            <DeleteParameters>
                <asp:Parameter Name="IDCliente" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="IDTipoDocumento" Type="Int32" />
                <asp:Parameter Name="Documento" Type="String" />
                <asp:Parameter Name="Nombres" Type="String" />
                <asp:Parameter Name="Apellidos" Type="String" />
                <asp:Parameter Name="Direccion" Type="String" />
                <asp:Parameter Name="TelefonoCelular" Type="String" />
                <asp:Parameter Name="Correo" Type="String" />
                <asp:Parameter DbType="Date" Name="FechaNacimiento" />
                <asp:Parameter Name="Usuario" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="IDTipoDocumento" Type="Int32" />
                <asp:Parameter Name="Documento" Type="String" />
                <asp:Parameter Name="Nombres" Type="String" />
                <asp:Parameter Name="Apellidos" Type="String" />
                <asp:Parameter Name="Direccion" Type="String" />
                <asp:Parameter Name="TelefonoCelular" Type="String" />
                <asp:Parameter Name="Correo" Type="String" />
                <asp:Parameter DbType="Date" Name="FechaNacimiento" />
                <asp:Parameter Name="Usuario" Type="String" />
                <asp:Parameter Name="IDCliente" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="TipoDocumentoSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:DefaulConnetion %>" SelectCommand="SELECT IDTipoDocumento, Descripcion FROM TipoDocumento
UNION
SELECT 0, '[Seleccione un tipo de documento]'
ORDER BY 2"></asp:SqlDataSource>
    </p>
</asp:Content>
