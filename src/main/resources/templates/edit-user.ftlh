<!DOCTYPE html>
<html>
<head>
    <title>Marketplace</title>
</head>
<body>
<h1>Marketplace</h1>
<h3>Edit user: ${user.name}</h3><br>

<form action="/admin/user/edit" method="post">
    <#list roles as role>
        <div>
            <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}
            </label>
        </div>
    </#list>
    <input type="hidden" value="${user.id}" name="userId">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <button type="submit">Save</button>
</form>
</body>
</html>