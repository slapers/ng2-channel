defmodule NgChannel.PageController do
  use NgChannel.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
