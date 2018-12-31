require_relative '../models/choice'

choices = [
 {beginning_decision_point_id: 1, ending_decision_point_id: 2, name: 'Sugar puffs'},
 {beginning_decision_point_id: 1, ending_decision_point_id: 2, name: 'Frosties'},
 {beginning_decision_point_id: 2, ending_decision_point_id: 3, name: 'Thompson Twins'},
 {beginning_decision_point_id: 2, ending_decision_point_id: 3, name: 'Now 2'},
 {beginning_decision_point_id: 3, ending_decision_point_id: 3, name: 'Accept'}
]

Choice.initialize_data = choices
