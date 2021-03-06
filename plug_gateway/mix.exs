defmodule PlugGateway.MixProject do
  use Mix.Project

  def project do
    [
      app: :plug_gateway,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {PlugGateway.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:cowboy, "~> 2.5"},
      {:distillery, "~> 2.0"},
      {:httpoison, "~> 1.3"},
      {:jason, "~> 1.1"},
      {:plug, "~> 1.6"},
      {:spandex, "~> 2.3"},
      {:spandex_datadog, "~> 0.3"},
      {:spandex_phoenix, "~> 0.2"},
    ]
  end
end
