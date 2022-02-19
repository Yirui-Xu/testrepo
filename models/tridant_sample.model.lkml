connection: "snowflake_client_demos_database"

# include all the views
include: "/views/**/*.view"

datagroup: 44_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: 44_default_datagroup

explore: customer {}

explore: dim_product {}

explore: dim_vendor {}

explore: fact_supply_chain_shipment {}

explore: gendergender {}

explore: google_analytics_sample {}

explore: json_twitter_view {}

explore: members {}

explore: snowpipe_table {}

explore: stg_supply_chain_shipment_data {}

explore: test {
  join: customer {
    type: left_outer
    sql_on: ${test.customer_id} = ${customer.customer_id} ;;
    relationship: many_to_one
  }
}

explore: test_product_cm {}





# explore:  harvest {}
