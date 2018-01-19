require "administrate/base_dashboard"

class PostDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo.with_options(searchable: false),
    id: Field::Number.with_options(searchable: false),
    date: Field::DateTime.with_options(searchable: false),
    work_performed: Field::Text.with_options(searchable: true),
    created_at: Field::DateTime.with_options(searchable: false),
    updated_at: Field::DateTime.with_options(searchable: false),
    status: Field::Select.with_options(searchable: false, collection: Post::statuses.map {|status| status[0]})
  }.freeze

  COLLECTION_ATTRIBUTES = %i[
    user
    status
    date
    work_performed
  ].freeze

  SHOW_PAGE_ATTRIBUTES = %i[
    user
    status
    id
    date
    work_performed
    created_at
    updated_at
  ].freeze

  FORM_ATTRIBUTES = %i[
    user
    date
    work_performed
    status
  ].freeze

end
