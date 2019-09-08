defmodule TheaterWeb.PageController do
  use TheaterWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
