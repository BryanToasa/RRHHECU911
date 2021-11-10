 <%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="cargo.aspx.cs" Inherits="RRHHECU911.vistas.data.cargo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="chp_title" runat="server">
    Cargo Institucional
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="chp_styles" runat="server">
    <!-- Footable CSS -->
    <link href='<%= Page.ResolveUrl("~/assets/plugins/footable/css/footable.core.css") %>' rel="stylesheet">
    <link href='<%= Page.ResolveUrl("~/assets/plugins/bootstrap-select/bootstrap-select.min.css") %>' rel="stylesheet">
    <link href='<%= Page.ResolveUrl("~/assets/plugins/bootstrap-switch/bootstrap-switch.min.css")%>' rel="stylesheet">
    <link href='<%= Page.ResolveUrl("~/css/pages/bootstrap-switch.css")%>' rel="stylesheet">
 </asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="chp_breadcrumb" runat="server">
    <div class="col-md-5 align-self-center">
        <h3 class="text-themecolor">Nuevo Cargo</h3>
    </div>
    <div class="col-md-7 align-self-center">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="javascript:void(0)">Inicio</a>
            </li>
            <li class="breadcrumb-item">Data Persona</li>
            <li class="breadcrumb-item active">Cargo</li>
        </ol>
    </div>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="chp_contenido" runat="server">
    <%-- <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Agregar nuevo cargo</h4>
                    <h6 class="card-subtitle"></h6>
                    <div class="table-responsive">
                        <table id="demo-foo-addrow" class="table m-t-30 table-hover contact-list" data-page-size="10">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Cargo</th>
                                    <th>Estado</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <!--AQUI ESTA LA PRIMER FILA DE LA TABLA CARGOS-->
                                    <td>1</td>
                                    <td>genelia@gmail.com</td>
                                    <td>
                                        <div class="bt-switch">
                                            <div class="m-b-30">
                                                <input type="checkbox" checked data-on-color="warning" data-off-color="danger" data-on-text="Enabled" data-off-text="Disabled" />
                                            </div>
                                        </div>

                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-icon btn-pure btn-outline delete-row-btn" data-toggle="tooltip" data-original-title="Delete">
                                            <i class="ti-close" aria-hidden="true"></i>
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>arijit@gmail.com</td>
                                    <td>
                                         <div class="bt-switch">
                                            <div class="m-b-30">
                                                <input type="checkbox" checked data-on-color="warning" data-off-color="danger" data-on-text="Enabled" data-off-text="Disabled" />
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-icon btn-pure btn-outline delete-row-btn" data-toggle="tooltip" data-original-title="Delete"><i class="ti-close" aria-hidden="true"></i></button>
                                    </td>
                                </tr>

                            </tbody>
                            

                        </table>

                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <%-- Tabla de Cargos--%>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Agregar nuevo cargo</h4>
                    <h6 class="card-subtitle"></h6>
                    <%--QUI VA UN <DIV> Y SE BORRA LO DE ARRIBA HASTA DESPUES DE TABLA CARGOS--%>
                  <%--8/11/21 descomentar--%>
                <%--  <%--  <asp:GridView ID="grvCargo" runat="server" OnRowCommand="grvCargo_RowCommand" AutoGenerateColumns="false" GridLines="None" CssClass="table table-hover text-center table-responsive">
                        <Columns>
                            <asp:TemplateField HeaderText="Codigo">
                                <ItemTemplate>
                                    <asp:Label ID="id_cargo" runat="server" Text='<%#Eval("CargoIntsi_id")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Nombres">
                                <ItemTemplate>
                                    <asp:Label ID="Nombre_cargo" runat="server" Text='<%#Eval("CargoInsti_nom")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="estado">
                                <ItemTemplate>
                                    <asp:Label ID="estado" runat="server" Text='<%#Eval("CargoInsti_estado")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ItemStyle-Width="17" HeaderStyle-Width="17">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnbEliminar" Width="16" Height="16" CommandArgument='<%#Eval("CargoIntsi_id")%>' CommandName="Eliminar" OnClientClick="return confirm('Esta seguro que desea eliminar este registro..')" runat="server"><i class="fas fa-trash"></i></asp:LinkButton>
                                </ItemTemplate>
                                <HeaderStyle Width="17px" />
                                <ItemStyle Width="17px" />
                            </asp:TemplateField>
                            <asp:TemplateField ItemStyle-Width="17" HeaderStyle-Width="17">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnbActualizar" runat="server" Text="Actualizar" OnClick="lnbActualizar_Click"></asp:LinkButton>
                                    <%--<asp:LinkButton ID="lnbActualizar" Width="16" Height="16" runat="server"><i class="fas fa-check"></i></asp:LinkButton>
                                </ItemTemplate>
                                <HeaderStyle Width="17px" />
                                <ItemStyle Width="17px" />
                            </asp:TemplateField>
                        </Columns>

                    </asp:GridView>--%>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="CargoIntsi_id" 
                    OnRowDataBound="GridView1_RowDataBound" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" 
                    OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" EmptyDataText="Que hace esto" CssClass="table table-hover text-center table-responsive"
                    OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:TemplateField HeaderText="Nombre">
                            <ItemTemplate>
                                <asp:Label ID="lbl_NomCargo" runat="server" Text='<%# Eval ("CargoInsti_nom") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtNomCargo" runat="server" Text='<%# Eval ("CargoInsti_nom") %>'> </asp:TextBox>
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Estado">
                            <ItemTemplate>
                                <asp:Label ID="lbl_EstaCargo" runat="server" Text='<%# Eval ("CargoInsti_estado") %>'></asp:Label>
                            </ItemTemplate>   
                        </asp:TemplateField>
                        <asp:CommandField ButtonType="Link" ShowEditButton="true"  ItemStyle-Width="150" />
                        <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnbEliminar" Width="16" Height="16" CommandArgument='<%#Eval("CargoIntsi_id")%>' CommandName="Eliminar" OnClientClick="return confirm('Esta seguro que desea eliminar este registro..')" runat="server"><i class="fas fa-trash"></i></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                </div>
            </div>
        </div>
    </div>
    <%-- Boton de Agregar Cargo--%>
     
    <tfoot>
            <tr>
                <td colspan="2">
                    <button type="button" class="btn btn-info btn-rounded" data-toggle="modal" data-target="#add-contact">Agregar nuevo contacto</button>
                </td>

                <td colspan="7">
                    <div class="text-right">
                        <ul class="pagination"></ul>
                    </div>
                </td>
            </tr>
        </tfoot>
        
    <%--Formulario de nuevos Cargos--%>
    <div id="add-contact" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title" id="myModalLabel">Nuevo Cargo</h4>
                </div>
                <!--AQUI EDITAS EL CUADRO DE AGREGAR NUEVO CARGoxO-->
                <div class="modal-body">
                    <div class="form-horizontal form-material">
                        <div class="form-group">
                            <div class="col-md-12 m-b-20">
                                <!--AQUI EDITAS EL CUADRO DE ID NUEVO CARGO-->
                                <asp:TextBox ID="TxtNombreCargo" runat="server" class="form-control" placeholder="Nuevo Cargo"></asp:TextBox>
                            </div>
                            <div class="col-md-12 m-b-20">
                                <!--AQUI EDITAS EL CUADRO DE CARGO NUEVO CARGO-->
                                <asp:TextBox ID="TxtEstadoCargo" runat="server" class="form-control" placeholder="Nuevo Estado"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="modal-footer">
                    <asp:Button ID="Btn_RegistarCargo" runat="server" Text="Guardar" OnClick="Btn_RegistarCargo_Click" CssClass="btn btn-info" />

                    <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Cancel</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="chp_scripts" runat="server">
    <!-- Footable -->
    <script src='<%= Page.ResolveUrl("~/assets/plugins/footable/js/footable.all.min.js") %>'></script>
    <script src='<%= Page.ResolveUrl("~/assets/plugins/bootstrap-select/bootstrap-select.min.js") %>' type="text/javascript"></script>
    <!--FooTable init-->
    <script src='<%= Page.ResolveUrl("/js/footable-init.js") %>'></script>
    <!-- bt-switch -->
    <script src='<%= Page.ResolveUrl("~/assets/plugins/bootstrap-switch/bootstrap-switch.min.js") %>'></script>
    <script type="text/javascript">
        $(".bt-switch input[type='checkbox'], .bt-switch input[type='radio']").bootstrapSwitch();
        var radioswitch = function () {
            var bt = function () {
                $(".radio-switch").on("switch-change", function () {
                    $(".radio-switch").bootstrapSwitch("toggleRadioState")
                }), $(".radio-switch").on("switch-change", function () {
                    $(".radio-switch").bootstrapSwitch("toggleRadioStateAllowUncheck")
                }), $(".radio-switch").on("switch-change", function () {
                    $(".radio-switch").bootstrapSwitch("toggleRadioStateAllowUncheck", !1)
                })
            };
            return {
                init: function () {
                    bt()
                }
            }
        }();
        $(document).ready(function () {
            radioswitch.init()
        });
    </script>

</asp:Content>
