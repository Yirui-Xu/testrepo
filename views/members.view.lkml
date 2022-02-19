view: members {
  sql_table_name: "GENERIC"."MEMBERS"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."FIRST_NAME" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."LAST_NAME" ;;
  }

  dimension: level {
    type: string
    sql: ${TABLE}."LEVEL" ;;
  }

  dimension_group: member_since {
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
    sql: ${TABLE}."MEMBER_SINCE" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, last_name, first_name]
  }
}
