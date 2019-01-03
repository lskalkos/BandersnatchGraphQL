require 'rgl/adjacency'
require 'rgl/dot'
require './app'

def to_dot_graph(graph, params = {})
  params['name'] ||= self.class.name.gsub(/:/, '_')
  fontsize       = params['fontsize'] ? params['fontsize'] : '8'
  final_graph    = (graph.directed? ? RGL::DOT::Digraph : RGL::DOT::Graph).new(params)
  edge_class     = graph.directed? ? RGL::DOT::DirectedEdge : RGL::DOT::Edge
  edge_labels    = params[:edge_labels] || {}

  graph.each_vertex do |v|
    final_graph << RGL::DOT::Node.new(
      'name'     => v.id,
      'fontsize' => fontsize,
      'label'    => v.to_s
    )
  end

  puts edge_labels

  graph.each_edge do |u, v|
    dot_edge = edge_class.new(
        'label'    => edge_labels["#{u.id}-#{v.id}"],
        'from'     => u.id,
        'to'       => v.id,
        'fontsize' => fontsize
    )
    final_graph << dot_edge
  end

  final_graph
end

def write_to_graphic_file(graph, options, fmt='png', dotfile="graph")
  src = dotfile + ".dot"
  dot = dotfile + "." + fmt

  File.open(src, 'w') do |f|
    f << to_dot_graph(graph, options).to_s << "\n"
  end

  unless system("dot -T#{fmt} #{src} -o #{dot}")
    raise "Error executing dot. Did you install GraphViz?"
  end
  dot
end


task :visualize_bandersnatch do

  graph = RGL::DirectedAdjacencyGraph.new
  Choice.all.each{|c| graph.add_edge(c.beginning_decision_point, c.ending_decision_point)}
  edge_labels = {}
  graph.each_edge do |b, e|
    c = Choice.where(beginning_decision_point_id: b.id, ending_decision_point_id: e.id).first
    key = "#{b.id}-#{e.id}"
    edge_labels[key] = c.name
  end

  write_to_graphic_file(graph, {edge_labels: edge_labels}, 'jpg')
end