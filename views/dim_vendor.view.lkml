view: dim_vendor {
  sql_table_name: "GENERIC"."DIM_VENDOR"
    ;;

  dimension: manufacturing_site {
    type: string
    sql: ${TABLE}."MANUFACTURING_SITE" ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}."VENDOR" ;;
  }

  dimension: vendor_dim_key {
    type: number
    sql: ${TABLE}."VENDOR_DIM_KEY" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
