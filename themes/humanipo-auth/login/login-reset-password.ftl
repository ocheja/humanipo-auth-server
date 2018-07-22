<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=true; section>
    <#if section = "form">
    <div id="kc-form">
          <div id="kc-form-wrapper">
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
        <form id="kc-reset-password-form" class="authorization__form" action="${url.loginAction}" method="post" style="margin-top:50px">
            <div class="${properties.kcFormGroupClass!}">
            <div class="input-wrp text--center">
            <p class="text--center">Enter your username or email address and we will send you instructions on how to create a new password.</p>
            </div>
                <div class="input-wrp">
                <div class="${properties.kcInputWrapperClass!}">
                                    <input type="text" id="username" placeholder="Email Address" name="username" tabindex="1" class="textfield ${properties.kcInputClass!}" autofocus/>
                                </div>
                                    </div>

            </div>

            <div class="${properties.kcFormGroupClass!} ${properties.kcFormSettingClass!}">

                <div class="input-wrp">
                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                                    <input tabindex="4" class="custom-btn custom-btn--medium custom-btn--style-2 wide ${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doSubmit")}"/>

                                                </div>
                </div>
                <div class="input-wrp">
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                                    <div class="${properties.kcFormOptionsWrapperClass!}">
                                        <span><a href="${url.loginUrl}">${msg("backToLogin")?no_esc}</a></span>
                                    </div>
                                </div>
                                                </div>
            </div>
        </form>
        </div>
      </div>
    </div>
</@layout.registrationLayout>
