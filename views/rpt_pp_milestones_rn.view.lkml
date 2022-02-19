view: rpt_pp_milestones_rn {
  sql_table_name: `LL_P6.RPT_PP_Milestones_RN`
    ;;

  dimension: activity_code {
    type: string
    sql: ${TABLE}.Activity_Code ;;
  }

  dimension: activity_code_desc {
    type: string
    sql: ${TABLE}.Activity_Code_Desc ;;
  }

  dimension: activity_id {
    type: string
    sql: ${TABLE}.Activity_ID ;;
  }

  dimension: activity_id_4 {
    type: string
    sql: ${TABLE}.Activity_ID_4 ;;
  }

  dimension: activity_type_name {
    type: string
    sql: ${TABLE}.Activity_Type_Name ;;
  }

  dimension_group: approved_delivery_finish {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Approved_Delivery_Finish ;;
  }

  dimension: approved_delivery_program {
    type: string
    sql: ${TABLE}.Approved_Delivery_Program ;;
  }

  dimension_group: baseline_start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Baseline_Start ;;
  }

  dimension: calculation1 {
    type: string
    sql: ${TABLE}.Calculation1 ;;
  }

  dimension: cf_blank {
    type: string
    sql: ${TABLE}.CF_Blank ;;
  }

  dimension: comparison {
    type: string
    sql: ${TABLE}.Comparison ;;
  }

  dimension_group: contract__completion {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Contract__Completion_Date ;;
  }

  dimension: count_activity_id {
    type: number
    sql: ${TABLE}.Count_Activity_ID ;;
  }

  dimension_group: data {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Data_Date ;;
  }

  dimension: delivery__programme_variance {
    type: number
    sql: ${TABLE}.Delivery__Programme_Variance ;;
  }

  dimension: delivery_programme_variance {
    type: number
    sql: ${TABLE}.Delivery_Programme_Variance ;;
  }

  dimension: delivery_programme_variance_reversed {
    type: number
    sql: ${TABLE}.Delivery_Programme_Variance_Reversed ;;
  }

  dimension: display_country {
    type: string
    sql: ${TABLE}.Display_Country ;;
  }

  dimension: display_operating_unit_name {
    type: string
    sql: ${TABLE}.Display_Operating_Unit_Name ;;
  }

  dimension: display_owning_organisation {
    type: string
    sql: ${TABLE}.Display_Owning_Organisation ;;
  }

  dimension: due_within_6_months {
    type: string
    sql: ${TABLE}.Due_within_6_months ;;
  }

  dimension_group: finish_last_period {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Finish_Last_Period ;;
  }

  dimension: float___0 {
    type: yesno
    sql: ${TABLE}.Float___0 ;;
  }

  dimension_group: forecast__current_ {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Forecast__Current_ ;;
  }

  dimension_group: forecast_delivery_program__last_ {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Forecast_Delivery_Program__Last_ ;;
  }

  dimension_group: forecast_finish {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Forecast_Finish ;;
  }

  dimension_group: forecast_start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Forecast_Start ;;
  }

  dimension: future_activities_ {
    type: yesno
    sql: ${TABLE}.Future_Activities_ ;;
  }

  dimension: int_approved_dp {
    type: number
    sql: ${TABLE}.int_approved_dp ;;
  }

  dimension: int_forecast_and_float {
    type: number
    sql: ${TABLE}.int_forecast_and_float ;;
  }

  dimension: int_forecast_dp_last {
    type: number
    sql: ${TABLE}.int_forecast_dp_last ;;
  }

  dimension: int_forecast_dp_this {
    type: number
    sql: ${TABLE}.int_forecast_dp_this ;;
  }

  dimension: int_max_due_date {
    type: number
    sql: ${TABLE}.INT_Max_Due_date ;;
  }

  dimension_group: max_approved {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Max_Approved_Date ;;
  }

  dimension_group: max_due_date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Max_Due_Date ;;
  }

  dimension_group: max_forecast_delivery_program__this_ {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Max_Forecast_Delivery_Program__This_ ;;
  }

  dimension: milestone {
    type: string
    sql: ${TABLE}.Milestone ;;
  }

  dimension: milestone_type {
    type: string
    sql: ${TABLE}.Milestone_Type ;;
  }

  dimension: month_skey {
    type: number
    sql: ${TABLE}.Month_SKey ;;
  }

  dimension: movement__this_last_ {
    type: number
    sql: ${TABLE}.Movement__This_Last_ ;;
  }

  dimension: movement__this_last____db {
    type: number
    sql: ${TABLE}.Movement__This_Last____db ;;
  }

  dimension: movement__this_last____db_reversed {
    type: number
    sql: ${TABLE}.Movement__This_Last____db_Reversed ;;
  }

  dimension: negotiated_or_competitive {
    type: string
    sql: ${TABLE}.Negotiated_Or_Competitive ;;
  }

  dimension: parent_task {
    type: string
    sql: ${TABLE}.Parent_Task ;;
  }

  dimension: period {
    type: string
    sql: ${TABLE}.Period ;;
  }

  dimension: period__copy_ {
    type: string
    sql: ${TABLE}.Period__copy_ ;;
  }

  dimension_group: period_month_end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Period_Month_End ;;
  }

  dimension: project_ {
    type: string
    sql: ${TABLE}.Project_ ;;
  }

  dimension: project_name {
    type: string
    sql: ${TABLE}.Project_Name ;;
  }

  dimension: project_number {
    type: number
    sql: ${TABLE}.Project_Number ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: remaining_float__ {
    type: number
    sql: ${TABLE}.Remaining_Float__ ;;
  }

  dimension: sector {
    type: string
    sql: ${TABLE}.Sector ;;
  }

  dimension: selected_view_is_eot {
    type: yesno
    sql: ${TABLE}.Selected_View_is_EOT ;;
  }

  dimension_group: start_last_period {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Start_Last_Period ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: task_name {
    type: string
    sql: ${TABLE}.Task_Name ;;
  }

  dimension: total_float {
    type: number
    sql: ${TABLE}.Total_Float ;;
  }

  dimension: total_float___db {
    type: number
    sql: ${TABLE}.Total_Float___db ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.Value ;;
  }

  dimension: value__copy_ {
    type: string
    sql: ${TABLE}.Value__copy_ ;;
  }

  dimension: var_finish_forecast_to_contract {
    type: string
    sql: ${TABLE}.Var_Finish_Forecast_to_Contract ;;
  }

  dimension: var_finish_forecast_to_delivery {
    type: number
    sql: ${TABLE}.Var_Finish_Forecast_to_Delivery ;;
  }

  dimension: variance_finish_forecast_to_contract {
    type: number
    sql: ${TABLE}.Variance_Finish_Forecast_to_Contract ;;
  }

  dimension: variance_finish_forecast_to_delivery {
    type: number
    sql: ${TABLE}.Variance_Finish_Forecast_to_Delivery ;;
  }

  measure: count {
    type: count
    drill_fields: [project_name, activity_type_name, task_name, display_operating_unit_name]
  }

  measure: delivery_programme_variance_reversed_sum {
    type: sum
    sql: ${TABLE}.Delivery_Programme_Variance_Reversed ;;
  }
  measure: min_delivery_programme_variance_reversed {
    type: min
    sql: ${TABLE}.Delivery_Programme_Variance_Reversed ;;
  }

  measure: max_delivery_programme_variance_reversed {
    type: max
    sql: ${TABLE}.Delivery_Programme_Variance_Reversed ;;
  }

  measure: median_delivery_programme_variance_reversed {
    type: median
   sql: ${TABLE}.Delivery_Programme_Variance_Reversed ;;
  }

  measure: 25_percentile_delivery_programme_variance_reversed {
    type: percentile
    percentile: 25
    sql: ${TABLE}.Delivery_Programme_Variance_Reversed ;;
  }

  measure: 75_percentile_delivery_programme_variance_reversed {
    type: percentile
    percentile: 75
    sql: ${TABLE}.Delivery_Programme_Variance_Reversed ;;
  }

  dimension: approved_delivery {
    type: date
    sql: CASE
        WHEN (lower(${milestone}) like '%commence%' or lower(${milestone}) like '%start%') THEN ${baseline_start_raw}
        WHEN (lower(${milestone}) like '%complete%' or lower(${milestone}) like '%finish%') THEN ${approved_delivery_finish_raw}
      ELSE ${approved_delivery_finish_raw}
      END ;;
  }

  dimension: forecast_current {
    type: date
    sql: CASE
        WHEN (lower(${milestone}) like '%commence%' or lower(${milestone}) like '%start%') Then ${forecast_start_raw}
        WHEN (lower(${milestone}) like '%complete%' or lower(${milestone}) like '%finish%') Then ${forecast_finish_raw}
      ELSE ${forecast_finish_raw}
      END ;;
  }

  dimension: delivery_programme_ {
    type: number
    sql: DATEDIFF(day, ${forecast_current}, ${approved_delivery}) ;;
  }
}
