view: stg_supply_chain_shipment_data {
  sql_table_name: "GENERIC"."STG_SUPPLY_CHAIN_SHIPMENT_DATA"
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension: asn_dn {
    type: string
    sql: ${TABLE}."ASN_DN" ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}."BRAND" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension_group: delivered_to_clien {
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
    sql: ${TABLE}."DELIVERED_TO_CLIEN_DATE" ;;
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

  dimension: dosage {
    type: string
    sql: ${TABLE}."DOSAGE" ;;
  }

  dimension: dosage_form {
    type: string
    sql: ${TABLE}."DOSAGE_FORM" ;;
  }

  dimension: first_line_designation {
    type: string
    sql: ${TABLE}."FIRST_LINE_DESIGNATION" ;;
  }

  dimension: freight_cost {
    type: number
    sql: ${TABLE}."FREIGHT_COST" ;;
  }

  dimension: fulfill_via_vendor {
    type: string
    sql: ${TABLE}."FULFILL_VIA_VENDOR" ;;
  }

  dimension: inco_term {
    type: string
    sql: ${TABLE}."INCO_TERM" ;;
  }

  dimension: item_description {
    type: string
    sql: ${TABLE}."ITEM_DESCRIPTION" ;;
  }

  dimension: line_item_insurance {
    type: number
    sql: ${TABLE}."LINE_ITEM_INSURANCE" ;;
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

  dimension: molecule_test_type {
    type: string
    sql: ${TABLE}."MOLECULE_TEST_TYPE" ;;
  }

  dimension: pack_price {
    type: number
    sql: ${TABLE}."PACK_PRICE" ;;
  }

  dimension: po_so {
    type: string
    sql: ${TABLE}."PO_SO" ;;
  }

  dimension: pq {
    type: string
    sql: ${TABLE}."PQ" ;;
  }

  dimension: product_group {
    type: string
    sql: ${TABLE}."PRODUCT_GROUP" ;;
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

  dimension: sub_classification {
    type: string
    sql: ${TABLE}."SUB_CLASSIFICATION" ;;
  }

  dimension: unit_of_measure {
    type: number
    sql: ${TABLE}."UNIT_OF_MEASURE" ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}."UNIT_PRICE" ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}."VENDOR" ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}."WEIGHT" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
