defmodule Myfirstproject.CLI.MenuItens do
  alias Myfirstproject.CLI.Menu

  def all, do: [
    %Menu{ label: "Cadastrar usuário", id: :create },
    %Menu{ label: "Listar os usuários", id: :read },
    %Menu{ label: "Atualizar os usuários", id: :update },
    %Menu{ label: "Excluir um usuário", id: :delete },
  ]

end
