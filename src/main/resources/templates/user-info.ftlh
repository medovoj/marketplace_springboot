<!DOCTYPE html>
<html>
<head>
    <title>Marketplace</title>
</head>
<body>
<h1>Marketplace</h1>
<h3>Current information about user: ${user.name}</h3><br>
<b>Email: </b> ${user.email}<br>
<b>Phone number: </b> ${user.phoneNumber}<br>

<h4>Products: ${user.name}</h4>

<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price}$ | <a href="/product/${product.id}">More..</a></p>
    </div>
<#else>
    No products
</#list>
</body>

</html>