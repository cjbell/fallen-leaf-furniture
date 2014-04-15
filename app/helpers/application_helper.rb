module ApplicationHelper

  def time_tag_for(object)
    time_tag object.updated_at,
             object.updated_at.to_s(:long),
             class: "data-item__time"
  end

  def yes_no(a)
    a ? "Yes" : "No"
  end

  def admin_nav_actions_for(o)
    links = "".html_safe

    links <<  link_to('Show', polymorphic_path([:admin, o]), class: "action")
    # links <<  link_to('Delete', polymorphic_path([:admin, o]), class: "action")

    content_tag :nav, links, class: "data-item__actions"
  end

end
