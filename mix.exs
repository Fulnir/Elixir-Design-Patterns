defmodule ElixirDesignPatterns.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_design_pattern,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      package: package(),
      description: description(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test,
        "coveralls.json": :test,
        "coveralls.circle": :test
      ],
      deps: deps(),
      # Docs
      docs: docs()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.17", only: :dev, runtime: false},
      {:credo, "~> 0.9.0-rc1", only: [:dev, :test]},
      {:ex_dash, "~> 0.1.5", only: :dev},
      {:inch_ex, "~> 0.5", only: [:dev, :test]},
      {:excoveralls, "~> 0.7.2", only: :test},
      {:ex_unit_notifier, "~> 0.1", only: :test},
      {:mix_test_watch, "~> 0.2", only: :dev, runtime: false},
      {:poison, "~> 2.0", override: true},
      {:httpoison, "~> 1.0"},
      {:bunt, "~> 0.2.0"}
    ]
  end
  defp description do
    """
    A simple http based database wrapper for dgraph.
    """
  end

  defp package do
    # These are the default files included in the package
    [
      name: :dgraph_ex,
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Edwin Bühler"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/Fulnir/elixir_design_pattern"}
    ]
  end

  defp docs do
    [
      name: "ElixirDesignPatterns",
      main: "README",
      formatters: ["html", "epub"],
      source_url: "https://github.com/Fulnir/elixir_design_pattern",
      homepage_url: "https://github.com/Fulnir/elixir_design_pattern",
      extras: [
        "README.md"
      ]
    ]
  end
end
