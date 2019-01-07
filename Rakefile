require 'rgl/adjacency'
require 'rgl/dot'
require './app'

task :visualize_bandersnatch do
  graph = RGL::DirectedAdjacencyGraph.new
  Choice.all.each{|c| graph.add_edge(c.beginning_decision_point, c.ending_decision_point)}
  edge_labels = {}
  graph.each_edge do |b, e|
    c = Choice.where(beginning_decision_point_id: b.id, ending_decision_point_id: e.id).first
    key = "#{b.id}-#{e.id}"
    edge_labels[key] = c.name
  end

  edge_label_setting = Proc.new{|b, e| edge_labels["#{b.id}-#{e.id}"]}
  graph.write_to_graphic_file('png', 'graph', {'edge' => {'label' => edge_label_setting}})
end