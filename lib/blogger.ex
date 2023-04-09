defmodule Blogger do
   require HTTPoison

  def fetch_blog do
    HTTPoison.get!("https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91")

  end

  def uppercase_all(list) do
    Enum.map(list, &String.upcase/1)

  end
end
