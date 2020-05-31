<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "header">
        <div class="row header-wrapper valign-wrapper">
            <img src="${url.resourcesPath}/img/icono.png" class="img-logo col s4"/>
            <div class="col s8 loginMsg">${msg("emailForgotTitle")}</div>
        </div>
    <#elseif section = "form">
        <div id="kc-form-wrapper" >
            <form id="kc-reset-password-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
                <div class="${properties.kcFormGroupClass!}">
                    <input type="text" id="username" name="username" class="${properties.kcInputClass!}" autofocus/>
                    <label for="username" class="${properties.kcLabelClass!}"><#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>
                </div>

                <div class="${properties.kcFormGroupClass!} ${properties.kcFormSettingClass!}">

                    <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                        <button class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" type="submit">
                            ${msg("doSubmit")}
                        </button>
                    </div>
                    <br/>
                    <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                        <div class="${properties.kcFormOptionsWrapperClass!}">
                            <span><a href="${url.loginUrl}">${kcSanitize(msg("backToLogin"))?no_esc}</a></span>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    <#elseif section = "info" >
        <div class="${properties.kcInfoReset!}" >
            ${msg("emailInstruction")}
        </div>
    </#if>
</@layout.registrationLayout>
