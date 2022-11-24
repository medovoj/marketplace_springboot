<!DOCTYPE html>
<html>
<head>
    <title>Marketplace</title>
</head>
<body>

<h1>Marketplace </h1>
<hr>
<h4>Admin panel</h4>
<table border="1">
    <tr>
        <th>Email</th>
        <th>Phone number</th>
        <th>Active</th>
        <th>Roles</th>
        <th>Ban user</th>
        <th>Change</th>
        <th>Info</th>
    </tr>
    <#list users as user>
        <tr>
            <th>${user.email}</th>
            <th>${user.phoneNumber}</th>
            <th><#if user.active>true<#else>false</#if></th>
            <th><#list user.roles as role>${role}<#sep>, </#list ></th>
            <th>
                <form action="/admin/user/ban/${user.id}" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" value="Ban">
                </form>
            </th>
            <th><a href="/admin/user/edit/${user.id}">Edit</a></th>
            <th><a href="/user/${user.id}"/>Info</th>
        </tr>
    <#else>
        No Users.
    </#list>
</table>

</body>
</html>