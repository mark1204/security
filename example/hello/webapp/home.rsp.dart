//Auto-generated by RSP Compiler
//Source: C:\home\tomyeh\prj\r\security\example\hello\home.rsp.html
part of hello_security;

/** Template, home, for rendering the view. */
Future home(HttpConnect connect) { //#2
  var _cs_ = new List<HttpConnect>(), request = connect.request, response = connect.response;

  if (!connect.isIncluded)
    response.headers.contentType = new ContentType.fromString("""text/html; charset=utf-8""");

  response.write("""
<!DOCTYPE html>
<html>
  <head>
    <title>Hello Rikulo Security</title>
    <link href="theme.css" rel="stylesheet" type="text/css" />
    <meta http-equiv="cache-control" content="no-cache">
  </head>
  <body>
  	<h1>Hello Rikulo Security</h1>
    <h2>Welcome, """); //#2

  response.write($nns(currentUser(request.session) != null ? currentUser(request.session): "Stranger")); //#11


  response.write("""
</p>
    <ul>
      <li><a href="/member">Access the protected resource</a></li>
      <li><a href="/admin">Access the protected resource that requires administrator.</a></li>
    </ul>
  </body>
</html>
"""); //#11

  return $nnf();
}
