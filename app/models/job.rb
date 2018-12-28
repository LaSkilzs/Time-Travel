class Job < ApplicationRecord
  belongs_to :generation
  belongs_to :industry
  enum gender: {male: "male", female: "female", both: "both"}
  enum age: {adults: "adults" , teens: "teens", children: "children", no_children: "no_children", family: "family"}
  enum travel: {home: "home", occassion: "occassion", often: "often"}
  enum days_of_week: {Mon_Fri: "Mon_Fri", Mon_Sat: "Mon_Sat", Everyday: "Everyday"}
  enum skill_level: {unskilled: "unskilled", semiskilled: "semiskilled", kindred: "kindred", skilled: "skilled", professional: "professional"}
  enum work_environment: {weathered: "weathered", unweathered: "unweathered", mixed: "mixed"}
end
