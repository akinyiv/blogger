defmodule Blogger do
   require HTTPoison

# Fetch a blog post from Medium
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

# Converts a list of strings to uppercase
  @spec uppercase_all(any) :: list
  def uppercase_all(list) do
    Enum.map(list, &String.upcase/1)

  end
end
