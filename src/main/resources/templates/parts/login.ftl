<#macro login path isRegisterForm>
<form action="${path}" method="post">
    <div class="form-group">
        <label> User Name :  </label>
        <input type="text" name="username" class="form-control" placeholder="Username"/>
    </div>
    <div class="form-group">
        <label> Password:  </label>
        <input type="password" name="password" class="form-control" placeholder="Password"/ >
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <#if !isRegisterForm><a href="/registration">Add new user</a></#if>
    <button class="btn btn-primary" type="submit"><#if isRegisterForm>Create<#else>Sign in></#if></button>


    <#--<div class="form-group">-->
        <#--<label for="inputEmail">Email address</label>-->
        <#--<input type="email" class="form-control" id="inputEmail" aria-describedby="emailHelp" placeholder="Enter email">-->
        <#--<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>-->
    <#--</div>-->
    <#--<div class="form-group">-->
        <#--<label for="exampleInputPassword1">Password</label>-->
        <#--<input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">-->
        <#--<input type="hidden" name="_csrf" value="${_csrf.token}"/>-->
    <#--</div>-->
    <#--<div><input type="submit" value="Sign In"/>-->

</form>
</#macro>

<#macro logout>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <button class="btn btn-primary" type="submit">"Sign Out"</button>
</form>
</#macro>