connection: "lookerbq"

# include all the views
include: "/views/**/*.view"

datagroup: naga_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: naga_project_default_datagroup

# NOTE: please see https://docs.looker.com/r/sql/bigquery?version=22.20
# NOTE: for BigQuery specific considerations

explore: videosstats {}
