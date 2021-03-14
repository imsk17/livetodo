defmodule LivetodosWeb.TodoLive do
  use LivetodosWeb, :live_view
  alias Livetodos.Todos

  def mount(_params, _session, socket) do
    {:ok, socket |> fetch}
  end

  defp fetch(socket) do
    assign(socket, todos: Todos.list_todos())
  end

  def handle_event("add", %{"todo" => todo}, socket) do
    Todos.create_todo(todo)
    {:noreply, fetch(socket)}
  end
end
