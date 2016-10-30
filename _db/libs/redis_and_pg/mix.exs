defmodule RedisAndPg.Mixfile do
  use Mix.Project

  def project do
    [app: :redis_and_pg,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :postgrex, :ecto],
     mod: {RedisAndPg, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:exredis, "~> 0.2.3"},
      {:postgrex, "~> 0.11.1"},
      {:ecto, "~> 2.0.0-beta.0"}
    ]
  end
end