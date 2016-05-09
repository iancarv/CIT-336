# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
questions = Question.create([{title: 'INITIATIVE'},{title: 'OPENESS TO THE UNKNOWN, ORIGINALITY & AUTHENTICITY'},{title: 'RISK-TAKING'},{title: 'TEAMWORK'},{title: 'PERSONAL AWARENESS'},{title: 'SELF-CONTROL'},{title: 'RECOGNITION'},{title: 'OPTMISM & ENERGY'},{title: 'PERSONAL IMPACT'}])


Alternative.create(text: 'Orally communicates ideas in a clear and objective way.', question: questions[0])
Alternative.create(text: 'Communicates ideas in writing in a clear and objective way.', question: questions[0])
Alternative.create(text: 'Contributes to a team with ideas that push the conversation forward.', question: questions[0])
Alternative.create(text: 'Effectively helps the team solve problems.', question: questions[0])
Alternative.create(text: 'Strive to improve own performance.', question: questions[0])
Alternative.create(text: 'Seek ways to do things better.', question: questions[0])
Alternative.create(text: 'Initiates actions to improve.', question: questions[0])


Alternative.create(text: 'Is curious to learn different topics.', question: questions[1])
Alternative.create(text: 'Respects different cultures and religions.', question: questions[1])
Alternative.create(text: 'Produces original and unusual ideas.', question: questions[1])
Alternative.create(text: 'Integrates different concepts into original ideas.', question: questions[1])
Alternative.create(text: 'Asks questions and articulates different viewpoints into concise ideas.', question: questions[1])
Alternative.create(text: 'Is authentic in communication and lifestyle, challenging the status quo and taking the road less traveled.', question: questions[1])
Alternative.create(text: 'Is transparent and demonstrates ethical behavior.', question: questions[1])


Alternative.create(text: 'Makes decisions without waiting for all usual approvals', question: questions[2])
Alternative.create(text: 'Decides own life and destiny.', question: questions[2])
Alternative.create(text: 'Is OK to make mistakes.', question: questions[2])
Alternative.create(text: 'Is OK to acknowledge my weaknesses.', question: questions[2])
Alternative.create(text: 'Is aware of his/her fears and wants to overcome them. ', question: questions[2])
Alternative.create(text: 'Experiments with new concepts and ideas.', question: questions[2])


Alternative.create(text: 'Enjoys working in a team environment.', question: questions[3])
Alternative.create(text: 'Adapts to the team demands.', question: questions[3])
Alternative.create(text: 'Respects different opinions.', question: questions[3])
Alternative.create(text: 'Enjoys different backgrounds and perspectives in a team.', question: questions[3])
Alternative.create(text: 'Understands reasons for others actions.', question: questions[3])
Alternative.create(text: 'Understands others by listening attentively.', question: questions[3])


Alternative.create(text: 'Can describe the underlying reasons for my own feelings.', question: questions[4])
Alternative.create(text: 'Shows awareness of own feelings.', question: questions[4])
Alternative.create(text: 'Acknowledges own strengths and weaknesses.', question: questions[4])
Alternative.create(text: 'Is able to describe how his/her own feelings affect his/her  actions.', question: questions[4])
Alternative.create(text: 'Takes feedback easily and is always looking for ways to improve.', question: questions[4])


Alternative.create(text: 'Acts appropriately even in emotionally charged situations.', question: questions[5])
Alternative.create(text: 'Controls impulses for the benefit of others.', question: questions[5])
Alternative.create(text: 'Remains composed, even in tough moments.', question: questions[5])
Alternative.create(text: 'Remains calm in stressful situations.', question: questions[5])
Alternative.create(text: 'Controls situations and makes others feel confident that everything will be fine.', question: questions[5])


Alternative.create(text: 'Recognizes the work and effort of people.', question: questions[6])
Alternative.create(text: 'Frequently provides feedback others find helpful for their development.', question: questions[6])
Alternative.create(text: 'Appreciates being acknowledged by the work he/she did.', question: questions[6])
Alternative.create(text: 'Coachs and mentors others.', question: questions[6])
Alternative.create(text: 'Personally invests time and effort in developing others.', question: questions[6])
Alternative.create(text: 'Cares about others and their development.', question: questions[6])


Alternative.create(text: 'Sees the positive in people, situations, and events more often than negative.', question: questions[7])
Alternative.create(text: 'Energizes people around with enthusiasm for a particular project or idea.', question: questions[7])
Alternative.create(text: 'Is perceived as enthusiastic and passionate.', question: questions[7])
Alternative.create(text: 'Views the future with hope.', question: questions[7])
Alternative.create(text: 'Has a positive outlook in the world.', question: questions[7])
Alternative.create(text: 'Sees opportunities rather than threats.', question: questions[7])
Alternative.create(text: 'Sees possibilities rather than problems.', question: questions[7])


Alternative.create(text: 'Convince others by appealing to their self-interest.', question: questions[8])
Alternative.create(text: 'Gets others to do what he/she believes is best.', question: questions[8])
Alternative.create(text: 'Anticipates how others will react when trying to convince them.', question: questions[8])
Alternative.create(text: 'Leads by building pride in the group.', question: questions[8])
Alternative.create(text: 'Leads by bringing out the best in people.', question: questions[8])
Alternative.create(text: 'Leads by inspiring people.', question: questions[8])
Alternative.create(text: 'Can get things done.', question: questions[8])


