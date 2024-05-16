{{ config(materialized='table') }}
select cc_class as cc_class, sum(cc_mkt_id) as count from cc_class_combined where cc_class = '{{var_1() }}' group by cc_class