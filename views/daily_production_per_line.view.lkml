view: daily_production_per_line {
  sql_table_name: `SeAH.daily_production_per_line` ;;

  dimension: mat_gbn {
    type: string
    sql: ${TABLE}.MAT_GBN ;;
  }
  dimension_group: output {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.OUTPUT_DATE ;;
  }
  dimension: plant_id {
    type: number
    sql: ${TABLE}.PLANT_ID ;;
  }
  dimension: plant_name {
    type: string
    sql: ${TABLE}.PLANT_NAME ;;
  }
  dimension: rstwgt {
    type: number
    sql: ${TABLE}.RSTWGT ;;
  }
  dimension: spmon {
    type: number
    sql: ${TABLE}.SPMON ;;
  }
  dimension: wo_wc_id {
    type: string
    sql: ${TABLE}.WO_WC_ID ;;
  }
  measure: count {
    type: count
    drill_fields: [plant_name]
  }
}
