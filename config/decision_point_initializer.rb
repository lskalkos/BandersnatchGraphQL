require_relative '../models/decision_point'

# 1, 5

decision_points = [
 {id: 1, description: 'What will you have for breakfast? Sugar puffs or frosties?'},
 {id: 2, description: 'What music will you listen to? Thompson Twins or Now 2?'},
 {id: 3, description: 'Will you write the game at Tuckersoft?  Accept or refuse?'},
 {id: 4, description: 'Would you like to talk about what happened with your mother? Yes or No?'},
 {id: 5, description: 'You may learn something new. Talk about your mom or not?'},
 {id: 6, description: 'Phaedra or Bermuda Triangle vinyl?'},
 {id: 7, description: 'Throw tea over computer or shout at dad?'},
 {id: 8, description: 'Talk about mother or go back (Dad in bedroom)?'},
 {id: 9, description: 'Follow Colin or talk to doctor?'},
 {id: 10, description: 'Drop acid or not?'},
 {id: 11, description: 'Who jumps? Stefan or Colin?'},
 {id: 12, description: 'Talk about mother or go back (to Stefan / Colin jumping)'},
 {id: 13, description: 'Bite nails or pull earlobe'},
 {id: 14, description: 'Throw pills in trash or flush down toilet?'},
 {id: 15, description: 'Destroy computer or hit desk?'},
 {id: 16, description: 'Talk about mother or go back (Hit desk/ destroy computer)?'},
 {id: 17, description: 'Pick up family photo or book?'},
 {id: 18, description: 'Throw tea over computer or destroy computer (while writing game)?'},
 {id: 19, description: 'Who is doing this to me? Netflix or BS symbol?'},
 {id: 20, description: 'What the f*ck is Netflix? Tell him more or try to explain?'},
 {id: 21, description: 'Tell more or stop the convo?'},
 {id: 22, description: 'Want more action? Yes or fuck yeah?'},
 {id: 23, description: 'Jump through window or fight her?'},
 {id: 24, description: 'Balls or chop?'},
 {id: 25, description: 'Talk about mother. (no choice)'},
 {id: 26, description: 'No (will not go with mother, no choice.)'},
 {id: 28, description: 'PAX or PAC?'},
 {id: 29, description: 'Who is there? (no choice)'},
 {id: 30, description: 'Kill dad or back off?'},
 {id: 31, description: 'Pick up photo or kill dad?'},
 {id: 32, description: 'Bury or chop up body?'},
 {id: 33, description: 'Throw tea over computer or destroy computer? (Pearl future version)'},
 {id: 34, description: 'Chop or bury? (no choice)'},
 {id: 35, description: 'Will you have the game done by the end of the day?'},
 {id: 36, description: 'Get rabbit from dad (no choice)'},
 {id: 37, description: 'TOY or PAC?'},
 {id: 38, description: 'PACS or BS symbol?'},
 {id: 39, description: 'Enter doctors phone number'},
 {id: 40, description: 'Go with mom on train? Yes or no?'},
 {id: 41, description: 'Who is doing this to me? Netflix or BS symbol? (later on)'},
 {id: 42, description: 'Let Colin yes go or kill him?'},
 {id: 43, description: 'Ending'}
]

DecisionPoint.initialize_data = decision_points
