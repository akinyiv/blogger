defmodule BloggerTest do
  use ExUnit.Case
  doctest Blogger

  test "fetch_blog fetches a blog post from URL" do
    assert Blogger.fetch_blog.status_code == 200
  end

  test "uppercase_all converts all elements to uppercase" do
    assert Blogger.uppercase_all(["cOw", "goat", "sheep"]) == ["COW", "GOAT", "SHEEP"]
  end
end
