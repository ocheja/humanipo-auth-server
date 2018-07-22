<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo displayWide=(realm.password && social.providers??); section>
    
    <#if section = "form">
    <div id="kc-form">
      <div id="kc-form-wrapper" <#if realm.password && social.providers??>class="${properties.kcFormSocialAccountContentClass!} ${properties.kcFormSocialAccountClass!}"</#if>>
        <#if realm.password>
        <div class="grid grid--container">
					<div class="authorization authorization--login">
						<a class="site-logo" href="https://humanipo.io">
                            <div class="eye eye-right">
                                <img src="${url.resourcesPath}/img/eye.gif">
                            </div>
                            <div class="eye eye-left">
                                <img src="${url.resourcesPath}/img/eye.gif">
                            </div>
							<img class="img-responsive" width="150" height="42" src="${url.resourcesPath}/img/human2.png" alt="humanipo">
						</a>
						<form id="kc-form-login" class="authorization__form" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
							<h3 class="__title">Sign In</h3>
                            <#if errorMessage?? && errorMessage?has_content>
                                <div class="input-wrp">
                                    <div class="alert alert-${errorMessage.type}">
                              <#if errorMessage.type = 'success'><span class="${properties.kcFeedbackSuccessIcon!}"></span></#if>
                              <#if errorMessage.type = 'warning'><span class="${properties.kcFeedbackWarningIcon!}"></span></#if>
                              <#if errorMessage.type = 'error'><span class="${properties.kcFeedbackErrorIcon!}"></span></#if>
                              <#if errorMessage.type = 'info'><span class="${properties.kcFeedbackInfoIcon!}"></span></#if>
                                        <span class="kc-feedback-text">${errorMessage.summary?no_esc}</span>
                                    </div>
                                </div>
                            </#if>

							<div class="input-wrp">
                    <#if usernameEditDisabled??>
								<input class="textfield ${properties.kcInputClass!}" id="username"  name="username" value="${(login.username!'')}" type="text" disabled type="text" value="" placeholder="<#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>" />
                    <#else>
								<input tabindex="1"  class="textfield ${properties.kcInputClass!}" id="username"  name="username" value="${(login.username!'')}" type="text" autofocus autocomplete="off" type="text" value="" placeholder="<#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if>" />
                    </#if>
							</div>
							<div class="input-wrp">
								<input tabindex="2" id="password" class="textfield ${properties.kcInputClass!}" name="password" type="password" autocomplete="off" placeholder="${msg('password')}" />
							</div>
							<p class="text-center">
                            <#if realm.rememberMe && !usernameEditDisabled??>
                                <label class="checkbox">
                                    <#if login.rememberMe??>
                                        <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox" checked><i class="fontello-check"></i> ${msg("rememberMe")}
                                    <#else>
                                        <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox"><i class="fontello-check"></i> ${msg("rememberMe")}
                                    </#if>
                                </label>
                        </#if>
                            <#if realm.resetPasswordAllowed><br/>
                                <p><a tabindex="5" href="${url.loginResetCredentialsUrl}">${msg("doForgotPassword")}</a></p> <br/>
                            </#if>

								<input tabindex="4" class="custom-btn custom-btn--medium custom-btn--style-2 wide" name="login" id="kc-login" value="${msg("doLogIn")}" type="submit" role="button"/>
							</p>
							<#if realm.password && social.providers??>
                                                <#list social.providers as p>
                                                    <p class="text-center">
                                                        <a tabindex="4" href="${p.loginUrl}" class="custom-btn ${p.alias} custom-btn--medium custom-btn--style-2 wide" name="${p.alias}" id="${p.providerId}"><i class="pull-left fontello fontello-${p.alias}"></i>  ${p.displayName}</a>
                                                    </p>
                                                </#list>
                                    </#if>

						</form>
					</div>
        </#if>
        <#elseif section = "info" >
        <#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
            <div id="kc-registration">
                <span>${msg("noAccount")} <a tabindex="6" href="${url.registrationUrl}">${msg("doRegister")}</a></span>
            </div>
        </#if>
    </#if>

				</div>
        
        </div>
      </div>
    
</@layout.registrationLayout>
