class RoundDecorator < Draper::Decorator
  delegate_all
  decorates_association :course

  def scorecard_title
    I18n.t('round.scorecard_title', name: course.name)
  end

  def location
    course.location
  end

  def date
    source.created_at.strftime("%b %d, %Y")
  end
end