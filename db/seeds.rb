# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
interviewer1 = Interviewer.create({name: "David Bowie", email: "z.stardust@mars.spider.web", role: "Human Resources Partner"})
interviewer2 = Interviewer.create({name: "Thomas Dolby", email: "tdolby@science.blind", role: "Chief Electonics Engineer"})
interviewer3 = Interviewer.create({name: "Rihanna", email: "rihanna@show.biz", role: "Lead Performer"})

candidate1 = Candidate.create({name: "Janet Jackson", email: "jjackson@jacksons.mus", phone: "123.123.1234"})
candidate2 = Candidate.create({name: "Ray Davies", email: "ray@davray.konk", phone: "123.123.2345"})
candidate3 = Candidate.create({name: "Cory McAbee", email: "bnayer@astronaut.usa", phone: "123.123.1236"})
candidate4 = Candidate.create({name: "M.I.A.", email: "mia@mia.uk", phone: "123.123.1237"})

position1 = Position.create({name: "Lead Singer", description: "Singer to lead great new band."})
position2 = Position.create({name: "Song Writer", description: "Lyricist for the labels' bands."})

interview1 = Interview.create({interview_date: 1.day.from_now, description: "Interview of Janet Jackson for the position of lead singer.", candidate: candidate1, position: position1})
interview2 = Interview.create({interview_date: 3.days.from_now, description: "Interview of Ray Davies for the Song Writer position.", candidate: candidate2, position: position2})
interview3 = Interview.create({interview_date: 2.days.from_now, description: "Interview of Cory McAbee for Lead Singer, although he may be better suited to writing.", candidate: candidate3, position: position1})
interview4 = Interview.create({interview_date: 1.day.from_now, description: "Interview of M.I.A. for Lead Singer position", candidate: candidate4, position: position1})

interview_participant1 = InterviewParticipant.create({interview: interview1, interviewer: interviewer1})
interview_participant2 = InterviewParticipant.create({interview: interview2, interviewer: interviewer1})
interview_participant3 = InterviewParticipant.create({interview: interview3, interviewer: interviewer1})
interview_participant4 = InterviewParticipant.create({interview: interview4, interviewer: interviewer3})

question1 = Question.create({question: "What is your vocal range?"})
question2 = Question.create({question: "Has anyone ever recorded one of your songs?"})
question3 = Question.create({question: "Have you fronted a band before?"})
question4 = Question.create({question: "Where do you find inspiration?"})
question5 = Question.create({question: "If you were a tree, what kind would you be?"})

interview1_question1 = InterviewQuestion.create({interview: interview1, question: question1, display_order: 2})
interview1_question2 = InterviewQuestion.create({interview: interview1, question: question3, display_order: 1})
interview1_question3 = InterviewQuestion.create({interview: interview1, question: question5, display_order: 3})

interview2_question1 = InterviewQuestion.create({interview: interview2, question: question2, display_order: 1})
interview2_question2 = InterviewQuestion.create({interview: interview2, question: question4, display_order: 2})
interview2_question3 = InterviewQuestion.create({interview: interview2, question: question5, display_order: 3})

interview3_question1 = InterviewQuestion.create({interview: interview3, question: question1, display_order: 3})
interview3_question2 = InterviewQuestion.create({interview: interview3, question: question2, display_order: 1})
interview3_question3 = InterviewQuestion.create({interview: interview3, question: question3, display_order: 2})