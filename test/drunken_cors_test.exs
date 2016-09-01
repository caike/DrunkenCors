defmodule DrunkenCorsTest do
  use ExUnit.Case
  use Plug.Test
  doctest DrunkenCors

  test "allows requests from anywhere" do
    opts = DrunkenCors.init([])
    conn = conn(:get, "/")
    conn = DrunkenCors.call(conn, opts)

    assert ["*"] == get_resp_header conn, "Access-Control-Allow-Origin"
  end

end
