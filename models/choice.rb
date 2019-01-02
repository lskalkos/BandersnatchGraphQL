class Choice
  attr_reader :name, :beginning_decision_point, :ending_decision_point, :beginning_decision_point_id, :ending_decision_point_id

  def initialize(params)
    @name = params[:name]
    @beginning_decision_point_id = params[:beginning_decision_point_id]
    @ending_decision_point_id = params[:ending_decision_point_id]
    @beginning_decision_point = DecisionPoint.find(params[:beginning_decision_point_id])
    @ending_decision_point = DecisionPoint.find(params[:ending_decision_point_id])
  end

  def self.where(options = {})
    all.select do |c|
      c.beginning_decision_point_id == options[:beginning_decision_point_id]
    end
  end

  def self.all
    @all
  end

  def self.initialize_data=(data)
    compiled_data = data.map{ |c| new(c) }
    @all = compiled_data
  end
end
