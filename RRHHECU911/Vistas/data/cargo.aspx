<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="cargo.aspx.cs" Inherits="RRHHECU911.vistas.data.cargo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="chp_title" runat="server">
    Cargo Institucional
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="chp_styles" runat="server">
    <!-- Footable CSS -->
    <link href='<%= Page.ResolveUrl("~/assets/plugins/footable/css/footable.core.css") %>' rel="stylesheet">
    <link href='<%= Page.ResolveUrl("~/assets/plugins/bootstrap-select/bootstrap-select.min.css") %>' rel="stylesheet" />
    <!-- Custom CSS -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="chp_breadcrumb" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="chp_contenido" runat="server">
    <div class="row">
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
                                    <td>AQUI VA EL ACTIVAR</td>
                                    <td>
                                        <button type="button" class="btn btn-sm btn-icon btn-pure btn-outline delete-row-btn" data-toggle="tooltip" data-original-title="Delete"><i class="ti-close" aria-hidden="true"></i></button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>arijit@gmail.com</td>
                                    <td>Estado2</td>
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
                                    <div id="add-contact" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                    <h4 class="modal-title" id="myModalLabel">Nuevo Cargo</h4>
                                                </div>
                                                <!--AQUI EDITAS EL CUADRO DE AGREGAR NUEVO CARGO-->   
                                                

                                                <div class="modal-body">
                                                    <div class="form-horizontal form-material">
                                                        <div class="form-group">
                                                            <div class="col-md-12 m-b-20">
                                                                 <!--AQUI EDITAS EL CUADRO DE Nombre NUEVO CARGO-->
                                                                <input type="text" class="form-control" placeholder="Type name">
                                                            </div>
                                                             <div class="col-md-12 m-b-20">
                                                                 <!--AQUI EDITAS EL CUADRO DE Nombre NUEVO CARGO-->
                                                                <input type="text" class="form-control" placeholder="Type name">
                                                            </div>                                                            
                                                        </div>
                                                    </div>
                                                   
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-info waves-effect" data-dismiss="modal">Save</button>
                                                    <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Cancel</button>
                                                </div>
                                            </div>
                                            <!-- /.modal-content -->
                                        </div>
                                        <!-- /.modal-dialog -->
                                    </div>
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

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="chp_scripts" runat="server">
    <!-- Footable -->
    <script src='<%= Page.ResolveUrl("~/assets/plugins/footable/js/footable.all.min.js") %>'></script>
    <script src='<%= Page.ResolveUrl("~/assets/plugins/bootstrap-select/bootstrap-select.min.js") %>' type="text/javascript"></script>
    <!--FooTable init-->
    <script src='<%= Page.ResolveUrl("/js/footable-init.js") %>'></script>
</asp:Content>
