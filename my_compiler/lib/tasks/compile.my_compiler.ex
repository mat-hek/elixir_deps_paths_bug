defmodule Mix.Tasks.Compile.MyCompiler do
  use Mix.Task
  def run(_args) do
    Mix.Project.deps_paths() |> inspect() |> Mix.shell().info()
  end
end
