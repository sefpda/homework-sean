class InterviewersController < ApplicationController

  def index
    interviewer_packets = Interviewer.all.map{|i| {name: i.name, uri: "interviewers/#{i.id}"}}

    render status: 200, json: {interviewers: interviewer_packets}
  end

  def show
    interviewer = Interviewer.find(params[:id])

    render status: 200, json: {name: interviewer.name, role: interviewer.role, schedule_uri: "interviewers/#{interviewer.id}/schedule"}
  end

  def schedule
    interviewer = Interviewer.find(params[:id])
    interviews = interviewer.interviews.order(:interview_date).limit(2)
    interview_packets = interviews.map { |i| {description: i.description, time: i.interview_date.strftime('%m/%d/%y %l:%M%P'), candidate: candidate_packet(i.candidate), position: position_packet(i.position), questions: questions_packet(i.questions) }  }

    render status: 200, json: {interviewer: interviewer.name, interviews: interview_packets}
  end

  private

  def questions_packet questions
    questions.map{|q| {question: q.question} }
  end

  def position_packet position
    {name: position.name, description: position.description}
  end

  def candidate_packet candidate
    {name: candidate.name, email: candidate.email, phone: candidate.phone}
  end

end