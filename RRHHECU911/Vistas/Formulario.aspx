<%@ Page Title="" Language="C#" MasterPageFile="~/SistemaEcu911.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="RRHHECU911.Vistas.Formulario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContenido" runat="server">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Formulario de Registro Bby</h4>
            </div>
            <div class="card-body">
                <div class="form-validation">
                    <form class="form-valide" action="#" method="post">
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="form-group row">
                                    <label class="col-lg-4 col-form-label" for="val-username">
                                        Nombre
                                                        <span class="text-danger">*</span>
                                    </label>
                                    <div class="col-lg-6">
                                        <input type="text" class="form-control" id="Nombre" name="Nombre" placeholder="Nombre">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-lg-4 col-form-label" for="val-username2">
                                        Segundo Nombre
                                                        <span class="text-danger">*</span>
                                    </label>
                                    <div class="col-lg-6">
                                        <input type="text" class="form-control" id="Nombre2" name="Nombre2" placeholder="Segundo Nombre">
                                    </div>
                                </div>
                                 <div class="form-group row">
                                    <label class="col-lg-4 col-form-label" for="val-username2">
                                        Apellido
                                                        <span class="text-danger">*</span>
                                    </label>
                                    <div class="col-lg-6">
                                        <input type="text" class="form-control" id="Apellido" name="Apellido" placeholder="Apellido">
                                    </div>
                                </div>
                                 <div class="form-group row">
                                    <label class="col-lg-4 col-form-label" for="val-username2">
                                        Segundo Apellido
                                                        <span class="text-danger">*</span>
                                    </label>
                                    <div class="col-lg-6">
                                        <input type="text" class="form-control" id="Apellido2" name="Apellido2" placeholder="Segundo Apellido">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-lg-4 col-form-label" for="val-email">
                                        Email <span
                                            class="text-danger">*</span>
                                    </label>
                                    <div class="col-lg-6">
                                        <input type="text" class="form-control" id="correo" name="correo" placeholder="Correo Electrónico">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-lg-4 col-form-label" for="val-password">
                                        Contraseña
                                                        <span class="text-danger">*</span>
                                    </label>
                                    <div class="col-lg-6">
                                        <input type="password" class="form-control" id="contrasena" name="contrasena" placeholder="Contraseña">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-lg-4 col-form-label" for="val-confirm-password">
                                        Confirmar Contraseña <span
                                            class="text-danger">*</span>
                                    </label>
                                    <div class="col-lg-6">
                                        <input type="password" class="form-control" id="contrasena2" name="contrasena" placeholder="Repita su Contraseña">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-lg-4 col-form-label" for="val-suggestions">
                                        Observaciones <span
                                            class="text-danger">*</span>
                                    </label>
                                    <div class="col-lg-6">
                                        <textarea class="form-control" id="observaciones" name="observaciones" rows="5" placeholder="Ingrese alguna observación"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="form-group row">
                                    <label class="col-lg-4 col-form-label" for="val-skill">
                                        Cargo Institucional
                                                        <span class="text-danger">*</span>
                                    </label>
                                    <div class="col-lg-6">
                                        <select class="form-control" id="CargoInstitucional" name="CargoInstitucional">
                                            <option value="">Please select</option>
                                            <option value="html">Que</option>
                                            <option value="css">Más</option>
                                            <option value="javascript">Ve</option>
                                            <option value="angular">?</option>
                                            <option value="angular">No</option>
                                            <option value="vuejs">Será</option>
                                            <option value="ruby">de</option>
                                            <option value="php">Tomar</option>
                                            <option value="asp">Un</option>
                                            <option value="python">Traguito</option>
                                            <option value="mysql">uwu?</option>
                                        </select>
                                    </div>
                                </div>
                                 <div class="form-group row">
                                    <label class="col-lg-4 col-form-label" for="val-skill">
                                        Zona
                                                        <span class="text-danger">*</span>
                                    </label>
                                    <div class="col-lg-6">
                                        <select class="form-control" id="zona" name="zona">
                                            <option value="">Please select</option>
                                            <option value="html">Que</option>
                                            <option value="css">Más</option>
                                            <option value="javascript">Ve</option>
                                            <option value="angular">?</option>
                                            <option value="angular">No</option>
                                            <option value="vuejs">Será</option>
                                            <option value="ruby">de</option>
                                            <option value="php">Tomar</option>
                                            <option value="asp">Un</option>
                                            <option value="python">Traguito</option>
                                            <option value="mysql">uwu?</option>
                                            <option value="python">X2</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-lg-4 col-form-label" for="val-currency">
                                        Sueldo
                                                        <span class="text-danger">*</span>
                                    </label>
                                    <div class="col-lg-6">
                                        <input type="text" class="form-control" id="sueldo" name="sueldo" placeholder="$21.60">
                                    </div>
                                </div>
                               
                                <div class="form-group row">
                                    <label class="col-lg-4 col-form-label" for="val-phoneus">
                                        Telefono
                                                        <span class="text-danger">*</span>
                                    </label>
                                    <div class="col-lg-6">
                                        <input type="text" class="form-control" id="telefono" name="telefono" placeholder="09-99999999" >
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label class="col-lg-4 col-form-label">
                                        <a
                                            href="javascript:void()">Terminos&amp;Condiciones</a> <span
                                                class="text-danger">*</span>
                                    </label>
                                    <div class="col-lg-8">
                                        <label class="css-control css-control-primary css-checkbox" for="val-terms">
                                            <input type="checkbox" class="css-control-input mr-2"
                                                id="val-terms" name="val-terms" value="1">
                                            <span class="css-control-indicator"></span>Esto no cacho si sirve pero derrepente ;v</label>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-lg-8 ml-auto">
                                        <button type="submit" class="btn btn-primary">Registrar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
