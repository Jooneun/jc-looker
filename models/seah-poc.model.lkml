connection: "seah_poc"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: seah_poc_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: seah_poc_default_datagroup

explore: perf_contrast {}

explore: daily_production_per_line {}
