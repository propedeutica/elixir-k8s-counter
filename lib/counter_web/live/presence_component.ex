defmodule PresenceComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
    <div>
    <h1 class="text-center pt-2 text-xl">Connected Clients: <%= @present %></h1>
    </div>
    """

  end
end
