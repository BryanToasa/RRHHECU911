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
    <%-- Tabla de Cargos--%>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                      <asp:ScriptManager Id="ScriptManager1" runat="server" />
                    <h4 class="card-title">Agregar nuevo cargo</h4>
                    <h6 class="card-subtitle"></h6>
                    
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <triggers>
                            <asp:AsyncPostBackTrigger ControlID="GridView1" />
                        </triggers>
                        <contenttemplate>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="Id_Cargo_Institucional"
                                OnRowDataBound="GridView1_RowDataBound" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit"
                                OnRowUpdating="GridView1_RowUpdating" OnRowCommand="GridView1_RowCommand">
                                <columns>
                                    <asp:TemplateField HeaderText="Nombre">
                                        <itemtemplate>
                                            <asp:Label ID="lbl_NomCargo" runat="server" Text='<%# Eval ("Nom_Cargo_Institucional") %>'></asp:Label>
                                        </itemtemplate>
                                        <edititemtemplate>
                                            <asp:TextBox ID="txtNomCargo" runat="server" Text='<%# Eval ("Nom_Cargo_Institucional") %>'></asp:TextBox>
                                        </edititemtemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="General">
                                        <itemtemplate>
                                            <asp:Label ID="lbl_General" runat="server" Text='<%# Eval ("Numero_Partida_General") %>'></asp:Label>
                                        </itemtemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Individual">
                                        <itemtemplate>
                                            <asp:Label ID="lbl_individual" runat="server" Text='<%# Eval ("Num_Partida_Individual") %>'></asp:Label>
                                        </itemtemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Estado">
                                        <itemtemplate>
                                            <asp:Label ID="lbl_EstaCargo" runat="server" Text='<%# Eval ("Estado_Cargo_Institucional") %>'></asp:Label>
                                        </itemtemplate>
                                    </asp:TemplateField>

                                    <asp:CommandField ButtonType="Link" ShowEditButton="true" ItemStyle-Width="150" />
                                    <asp:TemplateField>
                                        <itemtemplate>
                                            <asp:LinkButton ID="lnbEliminar" Width="16" Height="16" CommandArgument='<%#Eval("Id_Cargo_Institucional")%>' CommandName="Eliminar" OnClientClick="return confirm('Esta seguro que desea eliminar este registro..')" runat="server"><i class="fa fa-trash"></i></asp:LinkButton>
                                        </itemtemplate>
                                    </asp:TemplateField>
                                </columns>
                            </asp:GridView>
                        </contenttemplate>
                    </asp:UpdatePanel>


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
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <div id="add-contact" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">

                    <h4 class="modal-title" id="myModalLabel">Nuevo Cargo</h4>
                </div>
                <div class="col-md-12 m-b-20">
                    <div class="modal-body">
                        <div class="form-horizontal form-material">
                            <div class="form-group">
                                <div class="col-md-12 m-b-20">
                                  

                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                        <triggers>
                                            <asp:AsyncPostBackTrigger ControlID="Drop_Cargo" />
                                        </triggers>
                                        <contenttemplate>
                                                <asp:DropDownList ID="Drop_Cargo"
                                                    AutoPostback="True"
                                                    DataValueField="id" runat="server"
                                                    class="custom-select form-control required"
                                                    OnSelectedIndexChanged="Drop_Cargo_SelectedIndexChanged">
                                                </asp:DropDownList>
                                                <asp:DropDownList ID="Drop_Individual"
                                                    DataValueField="id" runat="server"
                                                    class="custom-select form-control required">
                                                </asp:DropDownList>
                                            <div class="col-md-12 m-b-20">
                                                <!--AQUI EDITAS EL CUADRO DE CARGO NUEVO CARGO-->
                                                <asp:TextBox ID="TxtEstadoCargo" runat="server" class="form-control" placeholder="Nuevo Estado"></asp:TextBox>
                                            </div>


                                        </contenttemplate>
                                    </asp:UpdatePanel>
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
    </div>



    <%--Formulario de nuevos Cargos--%>
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
