<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "title">
        ${msg("loginTitle",(realm.displayName!''))}
    <#elseif section = "header">
        <link href="${url.resourcesPath}/img/favicon.png" rel="icon"/>
    <#elseif section = "form">
        <div>
            <img class="logo" src="${url.resourcesPath}/img/bbp-logo.svg" alt="Blue Brain Project - EPFL">
        </div>
        <div class="box-container">
            <div>
                <p class="application-name">${msg("errorTitle")}</p>
            </div>
        <div id="kc-error-message">
            <p class="instruction">${message.summary?no_esc}</p>
            <#if client?? && client.baseUrl?has_content>
                <p><a id="backToApplication" href="${client.baseUrl}">${kcSanitize(msg("backToApplication"))?no_esc}</a></p>
            </#if>
        </div>
        <div>
            <p class="copyright">&copy; ${msg("copyright", "${.now?string('yyyy')}")}</p>
        </div>
    </#if>
</@layout.registrationLayout>