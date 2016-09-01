defmodule DrunkenCors do
  import Plug.Conn

  def init(opts), do: opts

  def call(conn, _opts) do
    merge_resp_headers(conn, %{"Access-Control-Allow-Origin" => "*"})
  end
end
