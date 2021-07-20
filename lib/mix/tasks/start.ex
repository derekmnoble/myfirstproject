defmodule Mix.Tasks.Start do
  use Mix.Task

  @shortdoc "Start [Myfirstproject]"

  def run(_) do
    Myfirstproject.CLI.Main.start_app
  end
end
