defmodule Blogger do
  @moduledoc """
  This module provides functions for fetching and manipulating blog posts.
  """

  @doc """
  Fetches a blog post from the specified URL using the HTTPoison library.

  """
   require HTTPoison

  @spec fetch_blog :: %{
          :__struct__ => HTTPoison.AsyncResponse | HTTPoison.Response,
          optional(:body) => any,
          optional(:headers) => list,
          optional(:id) => reference,
          optional(:request) => HTTPoison.Request.t(),
          optional(:request_url) => any,
          optional(:status_code) => integer
        }
  def fetch_blog do
    HTTPoison.get!("https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91")

  end

@doc """
  Converts a list of strings to uppercase.

  ## Examples

      iex> Blogger.uppercase_all(["cow", "goat", "sheep"])
      ["COW", "GOAT", "SHEEP"]
  """

  @spec uppercase_all(any) :: list
  def uppercase_all(list) do
    Enum.map(list, &String.upcase/1)

  end
end
