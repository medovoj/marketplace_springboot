<!DOCTYPE html>
<html>
<head>
    <title>Marketplace</title>
</head>
<body>

<h1>Marketplace </h1><hr>
<#if user.email??>
    <hr>
    <h3>User: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Logout">
    </form>
    <#if user.isAdmin()>
        <a href="/admin">Admin panel</a>
    </#if>

<#else>
    <a href="/login">Login</a>
</#if>

<h4>Products from whole Germany</h4>
<form action="/" , method="get">
    Search by title: <input type="text" name="title">
    <input type="submit" name="Search">
</form>

<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price}$ | <a href="/product/${product.id}">More..</a></p>
    </div>
<#else>
    <h3> No items</h3>
</#list>
<#if user.email??>
    <hr>
    <h3>Create new item</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">

        Title: <input type="text" name="title"><br><br>
        Description: <input type="text" name="description"><br><br>
        Price: <input type="number" name="price"><br><br>
        City: <input type="text" name="city"><br><br>
        Photo 1: <input type="file" name="file1"><br><br>
        Photo 2: <input type="file" name="file2"><br><br>
        Photo 3: <input type="file" name="file3"><br><br>

        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Add new Item">

    </form>
</#if>
</body>
</html>