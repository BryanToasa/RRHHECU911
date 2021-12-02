<%@ Page Title="" Language="C#" MasterPageFile="~/Dashboard.Master" AutoEventWireup="true" CodeBehind="new.aspx.cs" Inherits="RRHHECU911.vistas.person._new" %>

<asp:Content ID="Content11" ContentPlaceHolderID="chp_styles" runat="server">
     <link href='<%= Page.ResolveUrl("~/assets/plugins/wizard/steps.css") %>' rel="stylesheet">
    <!--alerts CSS -->
    <link href='<%= Page.ResolveUrl("~/assets/plugins/sweetalert/sweetalert.css") %>' rel="stylesheet" type="text/css">

</asp:Content>

<asp:Content ID="Content12" ContentPlaceHolderID="chp_scripts" runat="server">
    <script src='<%= Page.ResolveUrl("~/assets/plugins/moment/min/moment.min.js")%>'></script>
    <script src='<%= Page.ResolveUrl("~/assets/plugins/wizard/jquery.steps.min.js")%>'></script>
    <script src='<%= Page.ResolveUrl("~/assets/plugins/wizard/jquery.validate.min.js")%>'></script>
    <!-- Sweet-Alert  -->
    <script src='<%= Page.ResolveUrl("~/assets/plugins/sweetalert/sweetalert.min.js")%>'></script>
    <script src='<%= Page.ResolveUrl("~/assets/plugins/wizard/steps.js")%>'></script>
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
                    <h4 class="card-title">Step wizard with validation</h4>
                    <h6 class="card-subtitle">You can us the validation like what we did</h6>
                    <div action="#" class="validation-wizard wizard-circle">
                         <!-- Step 0 -->
                        <h6>Step 1</h6>
                        <section>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="wfirstName2">First Name : <span class="danger">*</span> </label>
                                        <input type="text" class="form-control required" id="wfirstName20" name="firstName">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="wlastName2">Last Name : <span class="danger">*</span> </label>
                                        <input type="text" class="form-control required" id="wlastName20" name="lastName">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="wemailAddress2">Email Address : <span class="danger">*</span> </label>
                                        <input type="email" class="form-control required" id="wemailAddress20" name="emailAddress">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="wphoneNumber2">Phone Number :</label>
                                        <input type="tel" class="form-control" id="wphoneNumber20">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="wlocation2">Select City : <span class="danger">*</span> </label>
                                          <asp:DropDownList ID="DropCargo" runat="server" class="custom-select form-control required">
                                                </asp:DropDownList>       
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="wdate2">Date of Birth :</label>
                                        <input type="date" class="form-control" id="wdate20">
                                    </div>
                                </div>
                            </div>
                        </section>
                        <!-- Step 1 -->
                        <h6>Step 1</h6>
                        <section>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="wfirstName2">First Name : <span class="danger">*</span> </label>
                                        <input type="text" class="form-control required" id="wfirstName2" name="firstName">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="wlastName2">Last Name : <span class="danger">*</span> </label>
                                        <input type="text" class="form-control required" id="wlastName2" name="lastName">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="wemailAddress2">Email Address : <span class="danger">*</span> </label>
                                        <input type="email" class="form-control required" id="wemailAddress2" name="emailAddress">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="wphoneNumber2">Phone Number :</label>
                                        <input type="tel" class="form-control" id="wphoneNumber2">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="wlocation2">Select City : <span class="danger">*</span> </label>        
                                    </div>
                                </div>
                                <div class="col-md-6">
                                        <label for="wdate2">Date of Birth :</label>
                                        <input type="date" class="form-control" id="wdate2">
                                    </div>
                                </div>
                            </div>            
                        <!-- Step 2 -->
                        <h6>Step 2</h6>
                        <section>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="jobTitle2">Company Name :</label>
                                        <input type="text" class="form-control required" id="jobTitle2">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="webUrl3">Company URL :</label>
                                        <input type="url" class="form-control required" id="webUrl3" name="webUrl3">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="shortDescription3">Short Description :</label>
                                        <textarea name="shortDescription" id="shortDescription3" rows="6" class="form-control"></textarea>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <!-- Step 3 -->
                        <h6>Step 3</h6>
                        <section>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="wint1">Interview For :</label>
                                        <input type="text" class="form-control required" id="wint1">
                                    </div>
                                    <div class="form-group">
                                        <label for="wintType1">Interview Type :</label>
                                        <select class="custom-select form-control required" id="wintType1" data-placeholder="Type to search cities" name="wintType1">
                                            <option value="Banquet">Normal</option>
                                            <option value="Fund Raiser">Difficult</option>
                                            <option value="Dinner Party">Hard</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label for="wLocation1">Location :</label>
                                        <select class="custom-select form-control required" id="wLocation1" name="wlocation">
                                            <option value="">Select City</option>
                                            <option value="India">India</option>
                                            <option value="USA">USA</option>
                                            <option value="Dubai">Dubai</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="wjobTitle2">Interview Date :</label>
                                        <input type="date" class="form-control required" id="wjobTitle2">
                                    </div>
                                    <div class="form-group">
                                        <label>Requirements :</label>
                                        <div class="c-inputs-stacked">
                                            <label class="inline custom-control custom-checkbox block">
                                                <input type="checkbox" class="custom-control-input">
                                                <span class="custom-control-indicator"></span><span class="custom-control-description ml-0">Employee</span>
                                            </label>
                                            <label class="inline custom-control custom-checkbox block">
                                                <input type="checkbox" class="custom-control-input">
                                                <span class="custom-control-indicator"></span><span class="custom-control-description ml-0">Contract</span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <!-- Step 4 -->
                        <h6>Step 4</h6>
                        <section>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="behName1">Behaviour :</label>
                                        <input type="text" class="form-control required" id="behName1">
                                    </div>
                                    <div class="form-group">
                                        <label for="participants1">Confidance</label>
                                        <input type="text" class="form-control required" id="participants1">
                                    </div>
                                    <div class="form-group">
                                        <label for="participants1">Result</label>
                                        <select class="custom-select form-control required" id="participants1" name="location">
                                            <option value="">Select Result</option>
                                            <option value="Selected">Selected</option>
                                            <option value="Rejected">Rejected</option>
                                            <option value="Call Second-time">Call Second-time</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="decisions1">Comments</label>
                                        <textarea name="decisions" id="decisions1" rows="4" class="form-control"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label>Rate Interviwer :</label>
                                        <div class="c-inputs-stacked">
                                            <label class="inline custom-control custom-checkbox block">
                                                <input type="checkbox" class="custom-control-input">
                                                <span class="custom-control-indicator"></span><span class="custom-control-description ml-0">1 star</span>
                                            </label>
                                            <label class="inline custom-control custom-checkbox block">
                                                <input type="checkbox" class="custom-control-input">
                                                <span class="custom-control-indicator"></span><span class="custom-control-description ml-0">2 star</span>
                                            </label>
                                            <label class="inline custom-control custom-checkbox block">
                                                <input type="checkbox" class="custom-control-input">
                                                <span class="custom-control-indicator"></span><span class="custom-control-description ml-0">3 star</span>
                                            </label>
                                            <label class="inline custom-control custom-checkbox block">
                                                <input type="checkbox" class="custom-control-input">
                                                <span class="custom-control-indicator"></span><span class="custom-control-description ml-0">4 star</span>
                                            </label>
                                            <label class="inline custom-control custom-checkbox block">
                                                <input type="checkbox" class="custom-control-input">
                                                <span class="custom-control-indicator"></span><span class="custom-control-description ml-0">5 star</span>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>