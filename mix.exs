defmodule Arc.Ecto.Mixfile do
  use Mix.Project

  @version "0.10.0"

  def project do
    [app: :arc_ecto,
     version: @version,
     elixir: "~> 1.4",
     deps: deps(),

    # Hex
     description: description(),
     package: package()]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :arc]]
  end

  defp description do
    """
    An integration with Arc and Ecto.
    """
  end

  defp package do
    [maintainers: ["Sean Stavropoulos"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/stavro/arc_ecto"},
     files: ~w(mix.exs README.md lib)]
  end

  defp deps do
    [
      {:arc, git: "https://github.com/kingshalaby/arc.git"},
      {:ecto, "~> 2.1"},
      {:mock, "~> 0.1.1", only: :test},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end
end
