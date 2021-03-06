class Issue < ApplicationRecord
  validates_presence_of :summary, :project_id, :type_id

  belongs_to :issue_type, class_name: "IssueType", foreign_key: "type_id"
  belongs_to :issue_priority, class_name: "IssuePriority", foreign_key: "priority_id"
end
