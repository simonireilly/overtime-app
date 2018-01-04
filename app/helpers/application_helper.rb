module ApplicationHelper
  def active?(path)
    'active' if current_page?(path)
  end

  def bootstrap_class_for(flash_type)
    { success: 'alert-success', error: 'alert-error', alert: 'alert-block', notice: 'alert-info' }[flash_type.to_sym] || flash_type.to_s
  end
end
