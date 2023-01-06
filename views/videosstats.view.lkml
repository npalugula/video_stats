view: videosstats {
  sql_table_name: [lookersample.videos-stats]
    ;;

  dimension: comments {
    type: number
    sql: ${TABLE}.Comments ;;
  }

  dimension: int64_field_0 {
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  dimension: keyword {
    type: string
    sql: ${TABLE}.Keyword ;;
  }

  dimension: likes {
    type: number
    sql: ${TABLE}.Likes ;;
  }

  dimension_group: published {
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
    sql: ${TABLE}.Published_At ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.Title ;;
  }

  dimension: video_id {
    type: string
    sql: ${TABLE}.Video_ID ;;
  }

  dimension: views {
    type: number
    sql: ${TABLE}.Views ;;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: []
  }
  measure: Is_Count_morethan_50 {
    type: number
    sql:  case when ${count} > 50  then 1 else 0 end ;;
  }
}
