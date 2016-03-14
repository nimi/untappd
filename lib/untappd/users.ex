defmodule Untappd.Users do
  import Untappd
  alias Untappd.Client

  @doc """
    List users
  """
  @doc """
  USERNAME (string, optional) - The username that you wish to call the request upon.

  compact (string, optional) - You can pass   "true" here only show the user infomation,
  and remove the "checkins", "media", "recent_brews", etc attributes
  """
  @spec info(binary, map, Client.t) :: Untappd.response
  def info(username, params, client \\ %Client{}) do
    get "user/info/#{username}/", client, params
  end

  @doc """
  USERNAME (string, optional) - The username that you wish to call the request upon.

  offset (int, optional) - The numeric offset that you what results to start
  limit (int, optional) - The number of results to return, max of 50, default is 25
  sort (string, optional) - You can sort the results using these values: date - sorts
  by date (default), checkin - sorted by highest checkin, highest_rated - sorts by
  global rating descending order, lowest_rated - sorts by global rating ascending
  order, highest_abv - highest ABV from the wishlist, lowest_abv - lowest ABV from
  the wishlist
  """
  @spec checkins(binary, map, Client.t) :: Untappd.response
  def checkins(username, params, client \\ %Client{}) do
    get "user/checkins/#{username}/", client, params
  end

  @doc """
  USERNAME (string, optional) - The username that you wish to call the request upon.

  offset (int, optional) - The numeric offset that you what results to start
  limit (int, optional) - The number of results to return, max of 50, default is 25
  sort (string, optional) - You can sort the results using these values: date - sorts
  by date (default), checkin - sorted by highest checkin, highest_rated - sorts by
  global rating descending order, lowest_rated - sorts by global rating ascending
  order, highest_abv - highest ABV from the wishlist, lowest_abv - lowest ABV from
  the wishlist
  """
  @spec wishlist(binary, map, Client.t) :: Untappd.response
  def wishlist(username, params, client \\ %Client{}) do
    get "user/wishlist/#{username}/", client, params
  end

  @doc """
  USERNAME (string, optional) - The username that you wish to call the request upon.

  offset (int, optional) - The numeric offset that you what results to start
  limit (int, optional) - The number of results to return, max of 50, default is 25
  """
  @spec friends(binary, map, Client.t) :: Untappd.response
  def friends(username, params, client \\ %Client{}) do
    get "user/friends/#{username}/", client, params
  end

  @doc """
  USERNAME (string, optional) - The username that you wish to call the request upon.

  offset (int, optional) - The numeric offset that you what results to start
  limit (int, optional) - The number of results to return, max of 50, default is 25
  """
  @spec badges(binary, map, Client.t) :: Untappd.response
  def badges(username, params, client \\ %Client{}) do
    get "user/badges/#{username}/", client, params
  end

  @doc """
  USERNAME (string, optional) - The username that you wish to call the request upon.

  offset (int, optional) - The numeric offset that you what results to start
  limit (int, optional) - The number of results to return, max of 50, default is 25
  """
  @spec beers(binary, map, Client.t) :: Untappd.response
  def beers(username, params, client \\ %Client{}) do
    get "user/beers/#{username}/", client, params
  end

end
