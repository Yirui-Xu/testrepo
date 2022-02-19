view: dim_product {
  sql_table_name: "GENERIC"."DIM_PRODUCT"
    ;;

  dimension: brand {
    type: string
    sql: ${TABLE}."BRAND" ;;
  }

  dimension: dosage {
    type: string
    sql: ${TABLE}."DOSAGE" ;;
  }

  dimension: dosage_form {
    type: string
    sql: ${TABLE}."DOSAGE_FORM" ;;
  }

  dimension: item_description {
    type: string
    sql: ${TABLE}."ITEM_DESCRIPTION" ;;
  }

  dimension: molecule_test_type {
    type: string
    sql: ${TABLE}."MOLECULE_TEST_TYPE" ;;
  }

  dimension: product_dim_key {
    type: number
    sql: ${TABLE}."PRODUCT_DIM_KEY" ;;
  }

  dimension: product_group {
    type: string
    sql: ${TABLE}."PRODUCT_GROUP" ;;
  }

  dimension: sub_classification {
    type: string
    sql: ${TABLE}."SUB_CLASSIFICATION" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
