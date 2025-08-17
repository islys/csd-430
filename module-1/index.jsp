<html>
<head>
    <title>My First JSP</title>
</head>
<body>
    <h1>Hello, JSP World!</h1>
    <% 
        // Simple Java code inside JSP
        int x = 5;
        int y = 7;
        int sum = x + y;
    %>
    <p>The sum of <%= x %> + <%= y %> is <%= sum %>.</p>
</body>
</html>


