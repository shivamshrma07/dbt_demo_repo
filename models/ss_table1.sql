{{ config(materialized='table') }}
select cc_class as class, sum(cc_mkt_id) as count from cc_class_combined group by cc_class