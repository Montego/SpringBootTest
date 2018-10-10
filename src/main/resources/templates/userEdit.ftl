<#import "parts/common.ftl" as c>
<@c.page>
User editor

<form action="/user" method="post" xmlns="http://www.w3.org/1999/html">
    <label><input type="text" name="userName" value="${user.username}"/></label>
    <#list roles as role>
        <div>
            <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked","")}/>${role}</label>
        </div>
    </#list>
    <label><input type="hidden" value="${user.id}" name="userId"/></label>
    <label><input type="hidden" value="${_csrf.token}" name="_csrf"/></label>
    <button type="submit">Save</button>

</form>
</@c.page>