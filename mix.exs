defmodule Untappd.Mixfile do
  use Mix.Project

  @description """
     Elixir wrapper for the Untappd API
  """

  def project do
    [app: :untappd,
     version: "0.0.1",
     elixir: "~> 1.2",
     name: "untappd",
     description: @description,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:httpoison, :logger, :exjsx]]
  end

  defp deps do
    [ {:httpoison, "~> 0.8.1"},
      {:exjsx, "~> 3.2"},
      {:earmark, "~> 0.2.1", only: :docs},
      {:ex_doc, "~> 0.11.4", only: :docs},
      {:inch_ex, "~> 0.5", only: :docs},
      {:excoveralls, "~> 0.4", only: :test},
      {:exvcr, "~> 0.6", only: :test},
      { :meck, "~> 0.8", only: :test } ]
  end
end
