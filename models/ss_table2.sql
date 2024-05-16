{{ config(materialized='table') }}
select cc_class as cc_class, sum(cc_mkt_id) as count from cc_class_combined where cc_class = 'env_var('DBT_CLASS')' group by cc_class