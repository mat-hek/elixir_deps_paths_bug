defmodule C.MixProject do
  use Mix.Project

  def project do
    [
      app: :c,
      version: "0.1.0",
      elixir: "~> 1.6",
      compilers: [:my_compiler] ++ Mix.compilers,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:b, git: "git@github.com:b.git"},
      {:my_compiler, path: "../my_compiler"}
    ]
  end
end
