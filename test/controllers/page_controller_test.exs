defmodule Teacher.PageControllerTest do
  use Teacher.Web.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    expected_response = "<!DOCTYPE html>\n<html lang=\"en\">\n  <head>\n    <meta charset=\"utf-8\">\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n    <meta name=\"description\" content=\"\">\n    <meta name=\"author\" content=\"\">\n\n    <title>Hello Teacher!</title>\n    <link rel=\"stylesheet\" href=\"/css/app.css\">\n  </head>\n\n  <body>\n    <div class=\"container\">\n\n      <p class=\"alert alert-info\" role=\"alert\"></p>\n      <p class=\"alert alert-danger\" role=\"alert\"></p>\n\n      <main role=\"main\">\n<h2>Listing movies</h2>\n\n<a href=\"/movies/new\">New movie</a>\n<table class=\"table\">\n  <thead>\n    <tr>\n      <th>Title</th>\n      <th>Summary</th>\n      <th>Year</th>\n\n      <th></th>\n    </tr>\n  </thead>\n  <tbody>\n  </tbody>\n</table>\n      </main>\n\n    </div> <!-- /container -->\n    <script src=\"/js/app.js\"></script>\n  </body>\n</html>\n"
    assert html_response(conn, 200) =~ expected_response
  end
end
