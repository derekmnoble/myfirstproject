defmodule Myfirstproject.CLI.MenuChoice do
  alias Mix.Shell.IO, as: Shell

  def start do
    Shell.cmd("clear")
    Shell.info("Escolha uma opção:")

    menu_itens = Myfirstproject.CLI.MenuItens.all()
    find_menu_item_by_index = &Enum.at(menu_itens, &1)

    menu_itens
    |> Enum.map(&(&1.label))
    |> display_options
    |> gerador_de_pergunta
    |> Shell.prompt
    |> parse_answer
    |> find_menu_item_by_index.()
    |> confirma_menu_item()
  end

  defp display_options(options) do
    options
    |> Enum.with_index(1)
    |> Enum.each(fn {option, index} ->
      Shell.info("#{index} - #{option}")
    end)

    options
  end

  defp gerador_de_pergunta(options) do
    options = Enum.join(1..Enum.count(options),",")
    "Escolha uma opção [#{options}]\n"
  end

  defp parse_answer(answer) do
    {option, _} = Integer.parse(answer)
    option - 1
  end

  defp confirma_menu_item(chosen_menu_item) do
    Shell.cmd("clear")
    Shell.info("Você escolheu... [#{chosen_menu_item.label}]")

    if Shell.yes?("Confirma?") do
      Shell.info("... #{chosen_menu_item.label} ...")
    else
      start()
    end

  end
end
