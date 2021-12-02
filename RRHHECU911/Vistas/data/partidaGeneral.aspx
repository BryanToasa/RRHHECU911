<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="partidaGeneral.aspx.cs" Inherits="RRHHECU911.vistas.data.partidaGeneral" %>

<asp:Content ID="Content1" ContentPlaceHolderID="chp_title" runat="server">
    PartidaGeneral
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="chp_styles" runat="server">
    <!-- Footable CSS -->
    <link href='<%= Page.ResolveUrl("~/assets/plugins/footable/css/footable.core.css")%>' rel="stylesheet">
    <link href='<%= Page.ResolveUrl("~/assets/plugins/bootstrap-select/bootstrap-select.min.css")%>' rel="stylesheet">
    <link href='<%= Page.ResolveUrl("~/assets/plugins/bootstrap-switch/bootstrap-switch.min.css")%>' rel="stylesheet">
    <link href='<%= Page.ResolveUrl("~/css/pages/bootstrap-switch.css")%>' rel="stylesheet">
    <link href='<%= Page.ResolveUrl("~/assets/plugins/bootstrap-datepicker/bootstrap-datepicker.min.css")%>' rel="stylesheet" type="text/css" />
    <link href='<%= Page.ResolveUrl("~/assets/plugins/select2/dist/css/select2.min.css")%>' rel="stylesheet" type="text/css" />
    <link href='<%= Page.ResolveUrl("~/assets/plugins/switchery/dist/switchery.min.css")%>' rel="stylesheet" />
    <link href='<%= Page.ResolveUrl("~/assets/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.css")%>' rel="stylesheet" />
    <link href='<%= Page.ResolveUrl("~/assets/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css")%>' rel="stylesheet" />
    <link href='<%= Page.ResolveUrl("~/assets/plugins/multiselect/css/multi-select.css")%>' rel="stylesheet" type="text/css" />
    <!-- Custom CSS -->
    <link href='<%= Page.ResolveUrl("~/css/style.css")%>' rel="stylesheet">
    <!-- You can change the theme colors from here -->
    <link href='<%= Page.ResolveUrl("~/css/colors/default-dark.css")%>' id="theme" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="chp_breadcrumb" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="chp_contenido" runat="server">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">REGISTRO PERSONA</h4>
                    <h6 class="card-subtitle">Ingreso Nueva Persona</h6>
                    <h5 class="m-t-30">Partida General</h5>
                    <select class="select2 form-control custom-select" style="width: 100%; height: 36px;">
                        <option>Select</option>
                        <option value="AK">Partida General 1</option>
                        <option value="AK">Partida General 2</option>
                        <option value="AK">Partida General 3</option>
                        <option value="AK">Partida General 4</option>
                        <option value="AK">Partida General 5</option>
                    </select>
                    <h5 class="m-t-20">PARTIDA INDIVIDUAL (PENDIENTE)</h5>
                    <input class="form-control" type="number" value="42" id="example-number-input">                 
                    <h5 class="m-t-20">CARGO INSTITUCIONAL</h5>
                    <select class="select2 form-control custom-select" style="width: 100%; height: 36px;">
                        <option>Select</option>
                        <optgroup label="Alaskan/Hawaiian Time Zone">
                            <option value="AK">EVALUADOR DE OPERACIONES (LLAMADAS)</option>
                            <option value="AK">EVALUADOR DE OPERACIONES ZONAL</option>
                            <option value="AK">SUBDIRECTOR TECNICO DE OPERACIONES SIS</option>
                            <option value="AK">ASESOR 3</option>
                            <option value="AB">ANALISTA DE OPERACIONES I</option>
                        </optgroup>                      
                    </select>
                    
                </div>
            </div>

        </div>
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

    <script src='<%= Page.ResolveUrl("~/assets/plugins/jquery/jquery.min.js")%>'></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src='<%= Page.ResolveUrl("~/assets/plugins/bootstrap/js/popper.min.js")%>'></script>
    <script src='<%= Page.ResolveUrl("~/assets/plugins/bootstrap/js/bootstrap.min.js")%>'></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src='<%= Page.ResolveUrl("~/js/perfect-scrollbar.jquery.min.js")%>'></script>
    <!--Wave Effects -->
    <script src='<%= Page.ResolveUrl("~/js/waves.js")%>'></script>
    <!--Menu sidebar -->
    <script src='<%= Page.ResolveUrl("~/js/sidebarmenu.js")%>'></script>
    <!--stickey kit -->
    <script src='<%= Page.ResolveUrl("~/assets/plugins/sticky-kit-master/dist/sticky-kit.min.js")%>'></script>
    <script src='<%= Page.ResolveUrl("~/assets/plugins/sparkline/jquery.sparkline.min.js")%>'></script>
    <!--Custom JavaScript -->
    <script src='<%= Page.ResolveUrl("~/js/custom.min.js")%>'></script>
    <!-- ============================================================== -->
    <!-- This page plugins -->
    <!-- ============================================================== -->
    <script src='<%= Page.ResolveUrl("~/assets/plugins/switchery/dist/switchery.min.js")%>'></script>
    <script src='<%= Page.ResolveUrl("~/assets/plugins/select2/dist/js/select2.full.min.js")%>' type="text/javascript"></script>
    <script src='<%= Page.ResolveUrl("~/assets/plugins/bootstrap-select/bootstrap-select.min.js")%>' type="text/javascript"></script>
    <script src='<%= Page.ResolveUrl("~/assets/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js")%>'></script>
    <script src='<%= Page.ResolveUrl("~/assets/plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js")%>' type="text/javascript"></script>
    <script type="text/javascript" src='<%= Page.ResolveUrl("~/assets/plugins/multiselect/js/jquery.multi-select.js")%>'></script>
    <script>
        jQuery(document).ready(function () {
            // Switchery
            var elems = Array.prototype.slice.call(document.querySelectorAll('.js-switch'));
            $('.js-switch').each(function () {
                new Switchery($(this)[0], $(this).data());
            });
            // For select 2
            $(".select2").select2();
            $('.selectpicker').selectpicker();
            //Bootstrap-TouchSpin
            $(".vertical-spin").TouchSpin({
                verticalbuttons: true,
                verticalupclass: 'ti-plus',
                verticaldownclass: 'ti-minus'
            });
            var vspinTrue = $(".vertical-spin").TouchSpin({
                verticalbuttons: true
            });
            if (vspinTrue) {
                $('.vertical-spin').prev('.bootstrap-touchspin-prefix').remove();
            }
            $("input[name='tch1']").TouchSpin({
                min: 0,
                max: 100,
                step: 0.1,
                decimals: 2,
                boostat: 5,
                maxboostedstep: 10,
                postfix: '%'
            });
            $("input[name='tch2']").TouchSpin({
                min: -1000000000,
                max: 1000000000,
                stepinterval: 50,
                maxboostedstep: 10000000,
                prefix: '$'
            });
            $("input[name='tch3']").TouchSpin();
            $("input[name='tch3_22']").TouchSpin({
                initval: 40
            });
            $("input[name='tch5']").TouchSpin({
                prefix: "pre",
                postfix: "post"
            });
            // For multiselect
            $('#pre-selected-options').multiSelect();
            $('#optgroup').multiSelect({
                selectableOptgroup: true
            });
            $('#public-methods').multiSelect();
            $('#select-all').click(function () {
                $('#public-methods').multiSelect('select_all');
                return false;
            });
            $('#deselect-all').click(function () {
                $('#public-methods').multiSelect('deselect_all');
                return false;
            });
            $('#refresh').on('click', function () {
                $('#public-methods').multiSelect('refresh');
                return false;
            });
            $('#add-option').on('click', function () {
                $('#public-methods').multiSelect('addOption', {
                    value: 42,
                    text: 'test 42',
                    index: 0
                });
                return false;
            });
            $(".ajax").select2({
                ajax: {
                    url: "https://api.github.com/search/repositories",
                    dataType: 'json',
                    delay: 250,
                    data: function (params) {
                        return {
                            q: params.term, // search term
                            page: params.page
                        };
                    },
                    processResults: function (data, params) {
                        // parse the results into the format expected by Select2
                        // since we are using custom formatting functions we do not need to
                        // alter the remote JSON data, except to indicate that infinite
                        // scrolling can be used
                        params.page = params.page || 1;
                        return {
                            results: data.items,
                            pagination: {
                                more: (params.page * 30) < data.total_count
                            }
                        };
                    },
                    cache: true
                },
                escapeMarkup: function (markup) {
                    return markup;
                }, // let our custom formatter work
                minimumInputLength: 1,
                templateResult: formatRepo, // omitted for brevity, see the source of this page
                templateSelection: formatRepoSelection // omitted for brevity, see the source of this page
            });
        });
    </script>
    <!-- ============================================================== -->
    <!-- Style switcher -->
    <!-- ============================================================== -->
    <script src='<%= Page.ResolveUrl("~/assets/plugins/styleswitcher/jQuery.style.switcher.js")%>'></script>
</asp:Content>
