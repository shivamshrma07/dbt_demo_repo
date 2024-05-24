{{ config(materialized='table') }}
select dqm_check('1') as dqmid