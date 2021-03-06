defmodule RecipeScrapers.MixProject do
  use Mix.Project

  def project do
    [
      app: :recipe_scrapers,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      compilers: [:elixir_make] ++ Mix.compilers(),
      package: package(),
      description: "Wrapper of the python library RecipeScrapers"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {RecipeScrapers.Application, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:poison, "~> 3.1"},
      {:elixir_make, "~> 0.6.0", runtime: false}
    ]
  end

  defp package do
    # These are the default files included in the package
    [
      files: ["lib", "mix.exs", "README.md"],
      maintainers: ["Guillaume Bailleul<laibulle@gmail.com>"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/laibulle/ex_recipe_scrapers"
      }
    ]
  end
end
