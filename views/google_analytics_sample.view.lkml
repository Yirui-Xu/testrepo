view: google_analytics_sample {
  sql_table_name: "GENERIC"."GOOGLE_ANALYTICS_SAMPLE"
    ;;

  dimension: bounce_rate {
    type: number
    sql: ${TABLE}."BOUNCE_RATE" ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}."CAMPAIGN" ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      month_name,
      month_num,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DATE" ;;
  }

  dimension: previous_year{
    type: string
    sql: extract(year from ${date_raw})-1 ;;
  }

  dimension: full_referrer {
    type: string
    sql: ${TABLE}."FULL_REFERRER" ;;
  }

  dimension: goal_completion {
    type: number
    sql: ${TABLE}."GOAL_COMPLETION" ;;
  }

  dimension: goal_conversion_rate_all {
    type: number
    sql: ${TABLE}."GOAL_CONVERSION_RATE_ALL" ;;
  }

  dimension: keyword {
    type: string
    sql: ${TABLE}."KEYWORD" ;;
  }

  dimension: medium {
    type: string
    sql: REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(${TABLE}."MEDIUM", 'edm1A', 'email'), 'edm1B', 'email'), '(none)','none'), '(not set)', 'none'), 'edm2', 'email'), 'ppc', 'cpc'), 'paid', 'cpc'), 'fbdvby', 'email'), 'cpcsocial', 'cpc'), 'email body', 'email'), 'Campaign-page', 'social'), 'booth', 'organic')  ;;
    drill_fields: [source_medium]
  }

  dimension: new_users {
    type: number
    sql: ${TABLE}."NEW_USERS" ;;
  }

  dimension: page_views {
    type: number
    sql: ${TABLE}."PAGE_VIEWS" ;;
  }

  dimension: pageviews_per_session {
    type: number
    sql: ${TABLE}."PAGEVIEWS_PER_SESSION" ;;
  }

  dimension: referral_path {
    type: string
    sql: ${TABLE}."REFERRAL_PATH" ;;
  }

  dimension: session_duration {
    type: number
    sql: ${TABLE}."SESSION_DURATION" ;;
  }

  dimension: sessions {
    type: number
    sql: ${TABLE}."SESSIONS" ;;
  }

  dimension: sessions_per_user {
    type: number
    sql: ${TABLE}."SESSIONS_PER_USER" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."SOURCE" ;;
  }

  dimension: source_medium {
    type: string
    sql: ${TABLE}."SOURCE_MEDIUM" ;;
  }

  dimension: users {
    type: number
    sql: ${TABLE}."USERS" ;;
  }

  dimension: goal_completion_tier {
    type: tier
    sql: ${goal_completion} ;;
    tiers: [0, 5, 10]
  }

  measure: percent_of_total_goal_completion {
    type: percent_of_total
    sql: ${total_goal_completion};;
  }

  measure: total_goal_completion {
    type: sum
    value_format_name: decimal_2
    sql: ${goal_completion} ;;
    html: {{ rendered_value }} || {{ percent_of_total_goal_completion._rendered_value }} of total>> ;;  ## here we use || to concatenate the values
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_users {
    type: sum
    sql: ${users} ;;
  }

  measure: total_users_conditional {
    type: sum
    sql: ${users} ;;
    value_format_name: decimal_0
    html: {% if value > 3080.00 %}
          <p style="color: white; background-color: #9fc190; margin: 0; border-radius: 5px; text-align:center">{{ rendered_value }}</p>
          {% elsif value < 3080.00 %}
          <p style="color: white; background-color: #D06464; margin: 0; border-radius: 5px; text-align:center">{{ rendered_value }}</p>
          {% else %}
          <p style="color: white; background-color: #edbc0e; margin: 0; border-radius: 5px; text-align:center">{{ rendered_value }}</p>
          {% endif %}
          ;;
  }

  measure: min_total_users {
    type: min
    sql: ${users};;
  }

  measure: max_total_users {
    type: max
    sql: ${users} ;;
  }

  measure: median_total_users {
    type: median
    sql: ${users} ;;
  }

  measure: 25_percentile_total_users {
    type: percentile
    percentile: 25
    sql: ${users} ;;
  }

  measure: 75_percentile_total_user {
    type: percentile
    percentile: 75
    sql: ${users} ;;
  }

  measure: total_new_users {
    type: sum
    sql: ${new_users} ;;
    link: {
      label: "Drill Dashboard"
      url: "https://tridant.cloud.looker.com/dashboards/2"
    }
  }

  measure: new_users_users_ratio {
    type: number
    sql: ${total_new_users}/${total_users} ;;
  }

  measure: new_users_users_ratio_conditional {
    type: number
    sql: 1.0*(${new_users_users_ratio});;
    html: <div style="float: left
                ; width:{{ value | times:100}}%
                ; background-color: rgba(0,180,0,{{ value | times:100 }})
                ; text-align:left
                ; color: #FFFFFF
                ; border-radius: 5px"> <p style="margin-bottom: 0; margin-left: 4px;">{{ value | times:100 }}%</p>
                </div>
                <div style="float: left
                ; width:{{ 1| minus:value | times:100}}%
                ; background-color: rgba(0,180,0,0.1)
                ; text-align:right
                ; border-radius: 5px"> <p style="margin-bottom: 0; margin-left: 0px; color:rgba(0,0,0,0.0" )>{{value}}</p>
                </div>
            ;;
    }

    measure: total_session_duration {
      type: sum
      sql: ${session_duration} ;;
      value_format_name: decimal_2
      drill_fields: [detailed_info*]
    }
    set: detailed_info {
      fields: [source,referral_path,keyword,total_sessions]
    }


    measure: total_sessions {
      type: sum
      sql: ${sessions} ;;
      value_format_name: decimal_2
    }

    measure: session_duration_sessions_ratio {
      type: number
      sql: (${total_session_duration}/${total_sessions})/100 ;;
      value_format_name: decimal_1
    }

  measure: session_duration_sessions_ratio_conditional {
    type: number
    sql: 1.0*(${session_duration_sessions_ratio});;
    html: <div style="float: left
                ; width:{{ value | times:100 }}%
                ; background-color: rgba(0,180,0,{{ value | times:100 }})
                ; text-align:left
                ; color: #FFFFFF
                ; border-radius: 5px"> <p style="margin-bottom: 0; margin-left: 4px;">{{ value | times:100 }}%</p>
                </div>
                <div style="float: left
                ; width:{{ 1| minus:value | times:100 }}%
                ; background-color: rgba(0,180,0,0.1)
                ; text-align:right
                ; border-radius: 5px"> <p style="margin-bottom: 0; margin-left: 0px; color:rgba(0,0,0,0.0" )>{{value}}</p>
                </div>
            ;;
  }

  measure: total_pageviews {
    type: sum
    sql: ${TABLE}."PAGE_VIEWS" ;;
  }

  measure: previous_year_users{
    type: number
    value_format_name: decimal_1
    sql:
      CASE
      WHEN (EXTRACT(YEAR FROM ${date_raw})-1) = ${previous_year}
         THEN ${total_users}
      END ;;
  }

}
