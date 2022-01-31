view: customer {
  sql_table_name: "GENERIC"."CUSTOMER"
    ;;
  drill_fields: [customer_id]

  dimension: customer_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."CUSTOMER_ID" ;;
  }

  dimension: customer_city {
    type: string
    sql: ${TABLE}."CUSTOMER_CITY" ;;
  }

  dimension_group: customer_dob {
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
    sql: ${TABLE}."CUSTOMER_DOB" ;;
  }

  dimension: customer_email {
    type: string
    sql: ${TABLE}."CUSTOMER_EMAIL" ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}."CUSTOMER_NAME" ;;
  }

  dimension: customer_state {
    type: string
    sql: ${TABLE}."CUSTOMER_STATE" ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_id, customer_name, test.count]
  }
}
