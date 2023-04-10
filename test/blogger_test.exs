defmodule BloggerTest do
  use ExUnit.Case
  doctest Blogger

  test "uppercase_all converts all elements to uppercase" do
    assert Blogger.uppercase_all(["cOw", "goat", "sheep"]) == ["COW", "GOAT", "SHEEP"]
  end
end
