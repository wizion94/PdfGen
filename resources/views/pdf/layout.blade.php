
<!DOCTYPE html>
<html>
<head>
    <title>Certificates generator</title>
</head>

<style>
    body, html {
        margin: 0;
        padding: 0;
    }

    body {
        color: black;
        display: block;
        font-family: Georgia, serif;
        font-size: 24px;
        margin: auto;
        text-align: center;
    }

    .container {
        border: 20px solid tan;
        width: 750px;
        height: 480px;
        display: block;
        vertical-align: middle;
        padding-top: 160px;
    }

    .logo {
        color: tan;
    }

    .marquee {
        color: tan;
        font-size: 48px;
        margin: 20px;
    }

    .assignment {
        margin: 20px;
    }

    .person {
        border-bottom: 2px solid black;
        font-size: 32px;
        font-style: italic;
        margin: 20px auto;
        width: 400px;
    }

    .reason {
        margin: 20px;
    }

    .bottom {
        margin: 40px 0 0;
    }

    .qr {
        display: inline;
    }
    .date {
       display: inline;
        margin-right: 160px;
        vertical-align: top;
    }

</style>
<body>
<div class="container">

    @yield('contentPDF')
</div>



</div>
</body>
</html>

