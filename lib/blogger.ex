defmodule Blogger do
   require HTTPoison

# Fetch a blog post from Medium
  def fetch_blog do
    HTTPoison.get!("https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91")

  end

# Converts a list of strings to uppercase
  def uppercase_all(list) do
    Enum.map(list, &String.upcase/1)

  end
end
