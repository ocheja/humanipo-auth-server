<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "form">
        <div class="grid grid--container">
            <div class="authorization authorization--registration">
                <!-- this is demo, remove div class row and div's class col -->
                <div class="row">
                    <div class="col col--md-auto">
                        <div class="text--center">
                            <a class="site-logo" href="index.html">
                                <img class="img-responsive" width="450" height="42" src="${url.resourcesPath}/img/humanipo-logo-face_1_wt.png" alt="humanipo">
                            </a>
                        </div>

                        <form class="authorization__form" action="${url.registrationAction}" method="post">
                            <h3 class="__title">Sign Up</h3>

                            <div class="input-wrp">
                                <input class="textfield" type="text" id="firstName" name="firstName"
                                       value="${(register.formData.firstName!'')}"
                                       placeholder="${msg("firstName")}"/>
                            </div>

                            <div class="input-wrp">
                                <input class="textfield" type="text" id="lastName" name="lastName"
                                       value="${(register.formData.lastName!'')}"
                                       placeholder="${msg("lastName")}"/>
                            </div>

                            <div class="input-wrp">
                                <input class="textfield" type="text" id="email" name="email"
                                       value="${(register.formData.email!'')}" autocomplete="email"
                                       placeholder="${msg("email")}"/>
                            </div>

                            <#if !realm.registrationEmailAsUsername>
                                <div class="input-wrp">
                                    <input class="textfield" type="text" id="username" name="username"
                                           value="${(register.formData.username!'')}" autocomplete="username"
                                           placeholder="${msg("username")}"/>
                                </div>
                            </#if>

                            <#if passwordRequired>
                                <div class="input-wrp">
                                    <i class="textfield-ico fontello-eye"></i>
                                    <input class="textfield" type="password" id="password" name="password"
                                           autocomplete="new-password" placeholder="${msg("password")}"/>
                                </div>

                                <div class="input-wrp">
                                    <i class="textfield-ico fontello-eye"></i>
                                    <input class="textfield" type="password" id="password-confirm"
                                           name="password-confirm" placeholder="${msg("passwordConfirm")}"/>
                                </div>
                            </#if>

                            <#if recaptchaRequired??>
                                <div class="form-group">
                                    <div class="${properties.kcInputWrapperClass!}">
                                        <div class="g-recaptcha" data-size="compact" data-sitekey="${recaptchaSiteKey}"></div>
                                    </div>
                                </div>
                            </#if>


                            <p>
                                <label class="checkbox">
                                    <input name="p1" type="checkbox" value="ok" required/>
                                    <i class="fontello-check"></i><span>I agree with <a href="sign_up.html#">Terms of Services</a></span>
                                </label>

                                <button class="custom-btn custom-btn--medium custom-btn--style-2 wide" type="submit"
                                        role="button">${msg("doRegister")}
                                </button>
                            </p>

                            <p class="text--center"><a href="${url.loginUrl}">${msg("backToLogin")?no_esc}</a></p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </#if>
</@layout.registrationLayout>
