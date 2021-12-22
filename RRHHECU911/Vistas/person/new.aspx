<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="new.aspx.cs" Inherits="RRHHECU911.vistas.person._new" %>

<asp:Content ID="Content11" ContentPlaceHolderID="chp_styles" runat="server">
    <link href='<%= Page.ResolveUrl("~/assets/plugins/wizard/steps.css") %>' rel="stylesheet">
    <!--alerts CSS -->
    <link href='<%= Page.ResolveUrl("~/assets/plugins/sweetalert/sweetalert.css") %>' rel="s8ylesheet" type="text/css">
</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="chp_title" runat="server">
    Nueva Persona
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="chp_breadcrumb" runat="server">
    <div class="col-md-5 align-self-center">
        <h3 class="text-themecolor">Nueva Persona</h3>
    </div>
    <div class="col-md-7 align-self-center">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="javascript:void(0)">Inicio</a>
            </li>
            <li class="breadcrumb-item">Usuarios</li>
            <li class="breadcrumb-item active">Nuevo</li>
        </ol>
    </div>
</asp:Content>

<asp:Content ID="Content10" ContentPlaceHolderID="chp_contenido" runat="server">
    <div class="row" id="validation">
        <div class="col-12">
            <div class="card wizard-content">
                <div class="card-body">
                   <h4 class="card-title">PERSONAS</h4>
                    <h6 class="card-subtitle">AGREGAR NUEVA PERSONA</h6>
                    <asp:ScriptManager runat="server"></asp:ScriptManager>               
                            <div action="#" class="validation-wizard wizard-circle">
                                <asp:Wizard runat="server" CssClass="col-md-12 m-b-20">
                                    <FinishNavigationTemplate>
                                        <asp:Button ID="FinishPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Anterior" />
                                        <asp:Button ID="FinishButton" runat="server" CommandName="MoveComplete" Text="Finalizar" />
                                    </FinishNavigationTemplate>
                                    <StartNextButtonStyle CssClass="btn btn-info" />
                                    <StepNextButtonStyle CssClass="btn btn-info" />
                                    <SideBarStyle HorizontalAlign="Center" VerticalAlign="Top" Wrap="True" />
                                    <SideBarTemplate>
                                        <asp:DataList ID="SideBarList" runat="server">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="SideBarButton" runat="server"></asp:LinkButton>
                                            </ItemTemplate>
                                            <SelectedItemStyle Font-Bold="True" />
                                        </asp:DataList>
                                    </SideBarTemplate>
                                    <WizardSteps>
                                        <asp:WizardStep runat="server" Title="1._ CARGO">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="wfirstName2">CARGO<span class="danger">*</span> </label>
                                                        <div>
                                                        <asp:DropDownList ID="Drop_Cargo" runat="server" CssClass="form-control js-example-placeholder-single" ToolTip="Select" AutoPostBack="True"
                                                            OnSelectedIndexChanged="Drop_Cargo_SelectedIndexChanged">
                                                        </asp:DropDownList>
                                                        <script type="text/javascript">
                                                            $(".js-example-placeholder-single").select2({
                                                                placeholder: "Select",
                                                                allowClear: true
                                                            });
                                                        </script>
                                                            </div>
                                                        <div>
                                                        <asp:DropDownList ID="Drop_Individual"
                                                            DataValueField="id" runat="server"
                                                            CssClass="form-control js-example-placeholder-single">
                                                        </asp:DropDownList>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                        </asp:WizardStep>
                                    </WizardSteps>
                                    <WizardSteps>
                                        <asp:WizardStep runat="server" Title="2._ DATOS PERSONALES" ViewStateMode="Enabled">
                                            <section>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="wfirstName2">PRIMER NOMBRE <span class="danger">*</span> </label>
                                                            <asp:TextBox ID="Txt_Primer_Nombre" runat="server" class="form-control required" Placeholder="INGRESE EL NOMBRE" Style="text-transform: uppercase"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="wfirstName2">SEGUNDO NOMBRE <span class="danger">*</span> </label>
                                                            <asp:TextBox ID="Txt_Segundo_Nombre" runat="server" class="form-control required" Placeholder="INGRESE EL NOMBRE" Style="text-transform: uppercase"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="wfirstName2">PRIMER APELLIDO <span class="danger">*</span> </label>
                                                            <asp:TextBox ID="Txt_Primer_Apellido" runat="server" class="form-control required" Placeholder="INGRESE EL APELLIDO" Style="text-transform: uppercase"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="wfirstName2">SEGUNDO APELLIDO <span class="danger">*</span> </label>
                                                            <asp:TextBox ID="Txt_Segundo_Apellido" runat="server" class="form-control required" Placeholder="INGRESE EL APELLIDO" Style="text-transform: uppercase"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="wemailAddress2">CORREO <span class="danger">*</span> </label>
                                                            <asp:TextBox ID="Txt_Correo" runat="server" class="form-control required" Placeholder="ejemplo@hotmail.com"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="wphoneNumber2">NUMERO CELULAR</label>
                                                            <asp:TextBox ID="Txt_telefono" runat="server" class="form-control required" Placeholder="0987654321"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="wlocation2">SELECCIONA GÉNERO <span class="danger">*</span> </label>
                                                            <asp:DropDownList ID="Drop_Genero" runat="server" class="custom-select form-control required">
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label for="wdate2">FECHA DE NACIMIENTO</label>
                                                            <input type="date" class="form-control" id="wdate20">
                                                        </div>
                                                    </div>
                                                </div>
                                            </section>
                                        </asp:WizardStep>
                                    </WizardSteps>
                                </asp:Wizard>
                </div>
            </div>
        </div>
    </div>
        </div>
</asp:Content>

<asp:Content ID="Content12" ContentPlaceHolderID="chp_scripts" runat="server">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" />
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
    <script src='<%= Page.ResolveUrl("~/assets/plugins/moment/min/moment.min.js")%>'></script>
    <script src='<%= Page.ResolveUrl("~/assets/plugins/wizard/jquery.steps.min.js")%>'></script>
    <script src='<%= Page.ResolveUrl("~/assets/plugins/wizard/jquery.validate.min.js")%>'></script>
    <!-- Sweet-Alert  -->
    <script src='<%= Page.ResolveUrl("~/assets/plugins/sweetalert/sweetalert.min.js")%>'></script>
    <script src='<%= Page.ResolveUrl("~/assets/plugins/wizard/steps.js")%>'></script>
    <!--stickey kit -->
    <script src='<%= Page.ResolveUrl("~/assets/plugins/sticky-kit-master/dist/sticky-kit.min.js")%>'></script>
</asp:Content>
