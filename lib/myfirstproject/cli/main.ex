defmodule Myfirstproject.CLI.Main do
  alias Mix.Shell.IO, as: Shell

  def start_app do
    Shell.cmd("clear")
    welcome_message()
    Shell.prompt("Pressione ENTER para continuar...")
    starts_menu_choice()
  end

  defp welcome_message do
    Shell.info("=====Agenda Pessoal=====")
    Shell.info("Welcome to your personal scheduler")
    Shell.info("========================")
  end

  defp starts_menu_choice do
    Myfirstproject.CLI.MenuChoice.start

  end
end
