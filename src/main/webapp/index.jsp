<%@ page import="com.byteagenten.examples.html5routing.Route" %>
<html>
<head>
    <title>Frontend</title>
    <meta charset="UTF-8"
          data-base-url="<%=Route.frontend(request)%>/">

    <link rel="stylesheet" href="<%=Route.asset(request, "styles.css")%>">
    <script type="application/javascript" src="<%=Route.asset(request, "app.js")%>"></script>
</head>
<body>
<h1 id="route">Current route: </h1>
<script>

    // Base URL under which the frontend SPA is running
    const meta = document.querySelector('meta');
    const baseUrl = meta && meta.dataset.baseUrl || '';

    // Get complete path after the hostname + port
    const pathname = location.pathname;
    // Determine current route, by removing the base URL from the path name
    const currentRoute = pathname.replace(new RegExp('^' + baseUrl), '');
    // Output route
    const header = document.getElementById('route');

    header.innerText += currentRoute;

</script>
</body>
</html>
