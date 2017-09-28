<section id="projects">
  <div class="row">
    <% @projects.each_slice(3) do |three_projects| %>
      <% three_projects.each do |project| %>
        <div class="col-md-4">
          <div id="wallWell" class="well">
            <p>Name: <%= project.name %></p>
            <p>Start Date: <%= project.start_date %></p>
            <p>Finish Date: <%= project.finish_date %></p>
            <p>Concept: <%= project.concept %></p>
          </div>
        </div>
      <% end %>
    <% end %> 
  </div>
</section>