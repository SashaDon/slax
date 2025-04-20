defmodule SlaxWeb.ChatRoomLive do
  use SlaxWeb, :live_view

  def render(assigns) do
    ~H"""
    <div>Welcome to the chat!</div>

    <%!-- normal ways of rendering elixir logic in heex --%>
    <div>{2 + 2}</div>
    <div><%= 2 + 2 %></div>

    <%!-- without rendering --%>
    <div><% 2 + 2 %></div>
    """
  end
end
