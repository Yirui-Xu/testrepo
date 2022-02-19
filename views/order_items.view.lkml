view: order_items {
  sql_table_name: "PUBLIC"."ORDER_ITEMS"
    ;;
  drill_fields: [order_item_id]

  dimension: order_item_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ORDER_ITEM_ID" ;;
  }

  dimension: average_sale_price {
    type: string
    sql: ${TABLE}."AVERAGE_SALE_PRICE" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."CREATED_DATE" ;;
  }

  dimension_group: delivered {
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
    sql: ${TABLE}."DELIVERED_DATE" ;;
  }

  dimension: inventory_item_id {
    type: number
    sql: ${TABLE}."INVENTORY_ITEM_ID" ;;
  }

  #dimension: order_count {
  #  type: number
  #  sql: ${TABLE}."ORDER_COUNT" ;;
  #}

  dimension: order_id {
    type: number
    sql: ${TABLE}."ORDER_ID" ;;
  }

  #dimension: order_item_count {
  #  type: number
  #  sql: ${TABLE}."ORDER_ITEM_COUNT" ;;
  #}

  #dimension: returned_date {
  #  type: number
  #  sql: ${TABLE}."RETURNED_DATE" ;;
  #}

  dimension_group: returned {
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
    sql: ${TABLE}."RETURNED_DATE" ;;
  }

  dimension: sale_price {
    type: number
    sql: ${TABLE}."SALE_PRICE" ;;
  }

  dimension_group: shipped {
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
    sql: ${TABLE}."SHIPPED_DATE" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  #dimension: total_revenue {
  #  type: string
  #  sql: ${TABLE}."TOTAL_REVENUE" ;;
  #}

  #dimension: total_revenue_from_completed_orders {
  #  type: string
  #  sql: ${TABLE}."TOTAL_REVENUE_FROM_COMPLETED_ORDERS" ;;
  #}

  dimension: user_id {
    type: number
    sql: ${TABLE}."USER_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [order_item_id]
  }

  measure: order_count {
    type: count_distinct
    sql: ${TABLE}."ORDER_COUNT" ;;
  }

  measure: order_item_count {
    type: count
    sql: ${TABLE}."ORDER_ITEM_COUNT" ;;
  }

  measure: total_revenue {
    type: sum
    sql: ${TABLE}."SALE_PRICE" ;;
    value_format_name: usd
  }

  measure: total_revenue_from_completed_orders {
    type: sum
    sql: ${sale_price} ;;
    filters: [status: "Complete"]
    value_format_name: usd
  }
}
