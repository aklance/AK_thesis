view: parks {
  sql_table_name: Biodiversity_in_NPS.Parks ;;

  dimension: acres {
    type: number
    sql: ${TABLE}.Acres ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.Latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.Longitude ;;
  }

  dimension: park_code {
    type: string
    sql: ${TABLE}.Park_Code ;;
  }

  dimension: park_name {
    type: string
    sql: ${TABLE}.Park_Name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: [park_name]
  }
}
