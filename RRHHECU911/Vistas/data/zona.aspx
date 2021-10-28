﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="zona.aspx.cs" Inherits="RRHHECU911.vistas.data.zona" %>
<asp:Content ID="Content1" ContentPlaceHolderID="chp_title" runat="server">
    Zona
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="chp_styles" runat="server">
    <!-- Footable CSS -->
    <link href='<%= Page.ResolveUrl("~/assets/plugins/footable/css/footable.core.css")%>' rel="stylesheet">
    <link href='<%= Page.ResolveUrl("~/assets/plugins/bootstrap-select/bootstrap-select.min.css")%>' rel="stylesheet">
     <link href='<%= Page.ResolveUrl("~/assets/plugins/bootstrap-switch/bootstrap-switch.min.css")%>' rel="stylesheet">
     <link href='<%= Page.ResolveUrl("~/css/pages/bootstrap-switch.css")%>' rel="stylesheet">
        <link href='<%= Page.ResolveUrl("~/assets/plugins/toast-master/css/jquery.toast.css")%>' rel="stylesheet">
        <link href='<%= Page.ResolveUrl("~/css/pages/other-pages.css")%>' rel="stylesheet">



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="chp_breadcrumb" runat="server">
    <div class="col-md-5 align-self-center">
        <h3 class="text-themecolor">Zona</h3>
    </div>
    <div class="col-md-7 align-self-center">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="javascript:void(0)">Inicio</a>
            </li>
            <li class="breadcrumb-item">Data Persona</li>
            <li class="breadcrumb-item active">Zona</li>
        </ol>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="chp_contenido" runat="server">
     <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Agregar nueva Zona</h4>
                    <h6 class="card-subtitle"></h6>
                    <div class="table-responsive">
                        <table id="demo-foo-addrow" class="table m-t-30 table-hover contact-list" data-page-size="10">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Zona</th>
                                    <th>Estado</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <!--AQUI ESTA LA PRIMER FILA DE LA TABLA ZONA-->
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

                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="add-contact" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title" id="myModalLabel">Nueva Zona</h4>
                </div>
                <!--AQUI EDITAS EL CUADRO DE AGREGAR NUEVO ZONA-->
                <div class="modal-body">
                    <div class="form-horizontal form-material">
                        <div class="form-group">
                            <div class="col-md-12 m-b-20">
                                <!--AQUI EDITAS EL CUADRO DE ID NUEVO ZONA-->
                                <asp:TextBox ID="Txt_NombreZona" runat="server" class="form-control" placeholder="Nueva Zona"></asp:TextBox>
                                
                            </div>
                            <div class="col-md-12 m-b-20">
                                <!--AQUI EDITAS EL CUADRO DE CARGO NUEVO ZONA-->
                                <asp:TextBox ID="Txt_EstadoZona" runat="server" class="form-control" placeholder="Estado Zona"></asp:TextBox>
                                
                            </div>
                        </div>
                    </div>

                </div>
                <div class="modal-footer">                
                    <asp:Button ID="Button1" runat="server" Text="Guardar" OnClick="Button1_Click" CssClass="btn btn-info" />
                    <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Cancelar</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="chp_scripts" runat="server">
    <!-- Footable -->
    <script src='<%= Page.ResolveUrl("~/assets/plugins/footable/js/footable.all.min.js")%>'></script>
    <script src='<%= Page.ResolveUrl("~/assets/plugins/bootstrap-select/bootstrap-select.min.js")%>' type="text/javascript"></script>
    <!--FooTable init-->
    <script src='<%= Page.ResolveUrl("/js/footable-init.js") %>'></script>
    <!-- bt-switch -->
    <script src='<%= Page.ResolveUrl("~/assets/plugins/bootstrap-switch/bootstrap-switch.min.js")%>'></script>
    <script type="text/javascript">
    $(".bt-switch input[type='checkbox'], .bt-switch input[type='radio']").bootstrapSwitch();
    var radioswitch = function() {
        var bt = function() {
            $(".radio-switch").on("switch-change", function() {
                $(".radio-switch").bootstrapSwitch("toggleRadioState")
            }), $(".radio-switch").on("switch-change", function() {
                $(".radio-switch").bootstrapSwitch("toggleRadioStateAllowUncheck")
            }), $(".radio-switch").on("switch-change", function() {
                $(".radio-switch").bootstrapSwitch("toggleRadioStateAllowUncheck", !1)
            })
        };
        return {
            init: function() {
                bt()
            }
        }
    }();
    $(document).ready(function() {
        radioswitch.init()
    });
    </script>
    <script src='<%= Page.ResolveUrl("~/assets/plugins/toast-master/js/jquery.toast.js")%>'></script>
    <script src='<%= Page.ResolveUrl("~/js/toastr.js")%>'></script>
    <script src='<%= Page.ResolveUrl("~/assets/plugins/styleswitcher/jQuery.style.switcher.js")%>'></script>

</asp:Content>
