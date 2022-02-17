connection: "google_bigquery"

# include all the views
include: "/views/**/*.view"

datagroup: google_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: google_default_datagroup

explore: rpt_pp_milestones_rn {}
