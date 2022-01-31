view: gendergender {
  sql_table_name: "GENERIC"."GENDERGENDER"
    ;;

  dimension: event {
    type: string
    sql: ${TABLE}."EVENT" ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}."GENDER" ;;
  }

  dimension: matillion_batch_id {
    type: number
    sql: ${TABLE}."MATILLION_BATCH_ID" ;;
  }

  dimension_group: matillion_updated_timestamp {
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
    sql: ${TABLE}."MATILLION_UPDATED_TIMESTAMP" ;;
  }

  dimension: new_player {
    type: number
    sql: ${TABLE}."NEW PLAYER" ;;
  }

  dimension: rowid {
    type: number
    value_format_name: id
    sql: ${TABLE}."ROWID" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
