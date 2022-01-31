view: fact_supply_chain_shipment {
  sql_table_name: "GENERIC"."FACT_SUPPLY_CHAIN_SHIPMENT"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension: asn_dn_number {
    type: string
    sql: ${TABLE}."ASN_DN_NUMBER" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension_group: delivered_to_client {
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
    sql: ${TABLE}."DELIVERED_TO_CLIENT_DATE" ;;
  }

  dimension_group: delivery_recorded {
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
    sql: ${TABLE}."DELIVERY_RECORDED_DATE" ;;
  }

  dimension: first_line_designation {
    type: string
    sql: ${TABLE}."FIRST_LINE_DESIGNATION" ;;
  }

  dimension: freight_cost_usd {
    type: number
    sql: ${TABLE}."FREIGHT_COST_USD" ;;
  }

  dimension: fulfill_by {
    type: string
    sql: ${TABLE}."FULFILL_BY" ;;
  }

  dimension: inco_term {
    type: string
    sql: ${TABLE}."INCO_TERM" ;;
  }

  dimension: item_description {
    type: string
    sql: ${TABLE}."ITEM_DESCRIPTION" ;;
  }

  dimension: line_item_insurance_usd {
    type: number
    sql: ${TABLE}."LINE_ITEM_INSURANCE_USD" ;;
  }

  dimension: line_item_quantity {
    type: number
    sql: ${TABLE}."LINE_ITEM_QUANTITY" ;;
  }

  dimension: line_item_value {
    type: number
    sql: ${TABLE}."LINE_ITEM_VALUE" ;;
  }

  dimension: managed_by {
    type: string
    sql: ${TABLE}."MANAGED_BY" ;;
  }

  dimension: manufacturing_site {
    type: string
    sql: ${TABLE}."MANUFACTURING_SITE" ;;
  }

  dimension: pack_price {
    type: number
    sql: ${TABLE}."PACK_PRICE" ;;
  }

  dimension: pos_so_number {
    type: string
    sql: ${TABLE}."POS_SO_NUMBER" ;;
  }

  dimension: pq_number {
    type: string
    sql: ${TABLE}."PQ_NUMBER" ;;
  }

  dimension: project_code {
    type: string
    sql: ${TABLE}."PROJECT_CODE" ;;
  }

  dimension_group: scheduled_delivery {
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
    sql: ${TABLE}."SCHEDULED_DELIVERY_DATE" ;;
  }

  dimension: shipment_mode {
    type: string
    sql: ${TABLE}."SHIPMENT_MODE" ;;
  }

  dimension: unit_of_measure_per_pack {
    type: number
    sql: ${TABLE}."UNIT_OF_MEASURE_PER_PACK" ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}."UNIT_PRICE" ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}."VENDOR" ;;
  }

  dimension: weight_kg {
    type: number
    sql: ${TABLE}."WEIGHT_KG" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
