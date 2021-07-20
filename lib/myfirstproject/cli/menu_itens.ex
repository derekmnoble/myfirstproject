defmodule Myfirstproject.CLI.MenuItens do
  alias Myfirstproject.CLI.Menu

  def all, do: [
    %Menu{ label: "Cadastrar usuário", id: :create },
    %Menu{ label: "Lista os usuários", id: :read },
    %Menu{ label: "Atualiza os usuários", id: :update },
    %Menu{ label: "Exclui um usuário", id: :delete },
  ]

end
