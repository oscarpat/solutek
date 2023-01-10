<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TipoDocumento.aspx.cs" Inherits="web.Formulario_web17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Tipos de Documento</h3>
    <table class="nav-justified" style="width: 38%; margin-left:390px">
        <tr>
            <td margin-left:400 style="width:  100px">Descripcion</td>
            <td>
                <asp:TextBox ID="DescripcionTextBox" runat="server" Width="200px" ForeColor="Red"></asp:TextBox> 
            </td>
        </tr>
    </table><br />
     <p>
        <asp:Label ID="mensajeLabel" style="margin-left:395px; font-size: large; color: #FF0000;" runat="server"></asp:Label></p>
    <p>
        <asp:Button ID="guardarButton" class="guardar" CssClass="guardar" runat="server" Text="Guardar" OnClick="guardarButton_Click" />
    </p>
   
    <p>
        <asp:GridView ID="datosGridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="2px" CellPadding="4" CellSpacing="1" DataKeyNames="IDTipoDocumento" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin:auto" Width="424px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="IDTipoDocumento" HeaderText="Tipo Documento" ReadOnly="True" SortExpression="IDTipoDocumento" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripción" SortExpression="Descripcion" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaulConnetion %>" DeleteCommand="DELETE FROM [TipoDocumento] WHERE [IDTipoDocumento] = @IDTipoDocumento" InsertCommand="INSERT INTO [TipoDocumento] ([Descripcion]) VALUES (@Descripcion)" ProviderName="<%$ ConnectionStrings:DefaulConnetion.ProviderName %>" SelectCommand="SELECT [IDTipoDocumento], [Descripcion] FROM [TipoDocumento]" UpdateCommand="UPDATE [TipoDocumento] SET [Descripcion] = @Descripcion WHERE [IDTipoDocumento] = @IDTipoDocumento">
            <DeleteParameters>
                <asp:Parameter Name="IDTipoDocumento" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Descripcion" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Descripcion" Type="String" />
                <asp:Parameter Name="IDTipoDocumento" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
