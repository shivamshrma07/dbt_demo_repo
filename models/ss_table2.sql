{{ config(materialized='table') }}
select cc_class as cc_class, sum({{convert_to_multiple_of_10('cc_mkt_id')}}) as count from cc_class_combined where cc_class = '{{var('class') }}' group by cc_class