module ApplicationHelper
  def active?(path)
    'active' if current_page?(path)
  end

  def status_label status
    status_span_generator status
  end

  private

  def status_span_generator status
    bootstrap_classes = { approved: 'success',
                          submitted: 'primary',
                          rejected: 'danger',
                          pending: 'primary',
                          confirmed: 'success' }
    content_tag(:span, status.titleize, class: "label label-#{bootstrap_classes[status.to_sym]}")
  end
end
