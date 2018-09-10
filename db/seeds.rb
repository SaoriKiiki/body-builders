# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

<h3 class = "espacio"> Lista de categorias </h3>
<table class="espacio table">
  <thead>
    <tr>
      <th>id</th>
      <th scope = "col">Name</th>
      <th scope = "col">Perfil</th>
      <th scope = "col">Peso</th>
    </tr>
  </thead>
  <tbody>
        <% @users.each do |user| %>
        <% @categorias.each do |categoria| %>
          <tr>
            <td><%=user.id%>  </td>
            <td><%= best_in_place user, :name, :inner_class => "input_field", :as => :input, :ok_button  => "Save"  %></td>
            <td> <%=best_in_place categoria, :peso, :inner_class => "input_field"%></td>
            <td> <%=best_in_place categoria, :perfil, :inner_class => "input_field"%></td>
          </tr>
        <% end %>
        <% end %>

#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
