view: json_twitter_view {
  sql_table_name: "GENERIC"."JSON_TWITTER_VIEW"
    ;;

  dimension: contributor {
    type: string
    sql: ${TABLE}."CONTRIBUTOR" ;;
  }

  dimension: coordinates {
    type: string
    sql: ${TABLE}."COORDINATES" ;;
  }

  dimension: created_at {
    type: string
    sql: ${TABLE}."CREATED_AT" ;;
  }

  dimension: urls {
    type: string
    sql: ${TABLE}."URLS" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
