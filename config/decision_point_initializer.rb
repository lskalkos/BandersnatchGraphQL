require_relative '../models/decision_point'

decision_points = [
 {id: 1, question: 'What will you have for breakfast? Sugar puffs or frosties?'},
 {id: 2, question: 'What music will you listen to? Thompson Twins or Now2?'},
 {id: 3, question: 'Will you write the game at Tuckersoft?  Accept or refuse?'},
 {id: 4, question: 'Talk about your mother or not'},
 {id: 5, question: 'You may learn something new. Talk about your mom or not?'},
 {id: 6, question: 'Phaedra or Bermuda Triangle vinyl?'},
 {id: 7, question: 'Throw tea over computer or shout at dad?'},
 {id: 8, question: 'Talk about mum or go back?'},
]


DecisionPoint.initialize_data = decision_points
