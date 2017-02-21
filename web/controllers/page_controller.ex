defmodule PhoenixReact.PageController do
  use PhoenixReact.Web, :controller

  def any(conn, _params) do
    IO.inspect conn.path_info
    html(conn, "Boom " <> path(conn))
  end

  defp path(conn) do
    Enum.join(["" | conn.path_info], "/")
  end
end
