<!DOCTYPE html>
<html>
    <head>
        <title>Certificates generator</title>
    </head>
    <link rel="stylesheet" href="/css/application.css">
    <body>
        <div class="container">
            @include('includes.header')
            <div class="main-content">
                @include('includes.errors')
                @yield('content')
            </div>
            @include('includes.footer')
      </div>
    </body>
</html>

