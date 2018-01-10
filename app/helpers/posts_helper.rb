module PostsHelper
  def status_label status
    status_span_generator status
  end

  private

  def status_span_generator status
    bootstrap_classes = { approved: 'success', submitted: 'primary', rejected: 'danger' }
    content_tag(:span, status.titleize, class: "label label-#{bootstrap_classes[status.to_sym]}")
  end
end
