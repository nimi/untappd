defmodule Untappd.Users do
  import Untappd
  alias Untappd.Client

  @doc """
    List users
  """

  @spec info(binary, Client.t) :: Untappd.response
  def info(username, client \\ %Client{}) do
    get "user/info/#{username}/", client
  end

  @spec checkins(binary, Client.t) :: Untappd.response
  def checkins(username, client \\ %Client{}) do
    get "user/checkins/#{username}/", client
  end

end
