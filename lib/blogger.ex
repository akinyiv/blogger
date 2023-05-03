defmodule Blogger do
  @moduledoc """
  This module provides functions for fetching and manipulating blog posts.
  """

  @doc """
  Fetches a blog post from the specified URL using the HTTPoison library.

  """
   require HTTPoison
   require Jason

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

# Define the URL
  url = "https://jsonplaceholder.typicode.com/posts/1"

  # Send a GET request to the URL and store the response
  response = HTTPoison.get!(url)

  # Extract the response body (data) from the HTTPoison response object
  data = response.body

  # Decode the JSON data using the Jason module
  map = Jason.decode!(data)

  # Extract the value associated with the "title" key from the resulting map
  title = Map.get(map, "title")
  







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
