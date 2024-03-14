view: perf_contrast {
  sql_table_name: `SeAH.perf_contrast` ;;

  dimension: diff_inout_plwgt {
    type: number
    sql: ${TABLE}.DIFF_INOUT_PLWGT ;;
  }
  dimension: diff_wgt {
    type: number
    sql: ${TABLE}.DIFF_WGT ;;
  }
  dimension: gubun {
    type: string
    sql: ${TABLE}.GUBUN ;;
  }
  dimension: mat_gbn {
    type: string
    sql: ${TABLE}.MAT_GBN ;;
  }
  dimension: spmon {
    type: number
    sql: ${TABLE}.SPMON ;;
  }
  dimension: sum_curr_plan_wgt {
    type: number
    sql: ${TABLE}.SUM_CURR_PLAN_WGT ;;
  }
  dimension: sum_in_plwgt {
    type: number
    sql: ${TABLE}.SUM_IN_PLWGT ;;
  }
  dimension: sum_out_plwgt {
    type: number
    sql: ${TABLE}.SUM_OUT_PLWGT ;;
  }
  dimension: sum_plan_plwgt {
    type: number
    sql: ${TABLE}.SUM_PLAN_PLWGT ;;
  }
  dimension: sum_result_wgt {
    type: number
    sql: ${TABLE}.SUM_RESULT_WGT ;;
  }
  dimension: werks_name {
    type: string
    sql: ${TABLE}.WERKS_NAME ;;
  }
  measure: count {
    type: count
    drill_fields: [werks_name]
  }
  measure: SUM_PLAN_PLWGT {
    type: sum
    drill_fields: [sum_plan_plwgt]
  }
  measure: SUM_RESULT_WGT {
    type: sum
    drill_fields: [sum_result_wgt]
  }


}
