view: snowpipe_table {
  sql_table_name: "GENERIC"."SNOWPIPE_TABLE"
    ;;

  dimension: json_col {
    type: string
    sql: ${TABLE}."JSON_COL" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
