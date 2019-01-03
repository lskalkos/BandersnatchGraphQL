class DecisionPoint
  attr_reader :id, :description

  def initialize(params)
    @id = params[:id]
    @description = params[:description]
  end

  def self.find(id)
    all.find{ |dp| dp.id == id }
  end

  def self.all
    @all
  end

  def self.initialize_data=(data)
    compiled_data = data.map{ |dp| new(dp) }
    @all = compiled_data
  end

  def choices
    Choice.where(beginning_decision_point_id: id)
  end

  def to_s
    description
  end
end
