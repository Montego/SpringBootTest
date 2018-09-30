<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
<h1>Login page</h1>
<@l.login "/login" />
<br>
<a href="/registration">Add new user</a>
<br>
</@c.page>