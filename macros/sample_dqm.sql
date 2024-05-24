{% macro dqm_check(process_id) %}   
    {% set dataset_ids = run_query('select distinct dataset_id from {{var(dqm_db)}}.{{var(dqm_schema)}}.{{var(process_table)}} where process_id = {{ref(process_id)}}') %}
    {% for dataset_id in dataset_ids %}
        {% set dqm_ids = run_query('select distinct dqm_id from {{var(dqm_db)}}.{{var(dqm_schema)}}.{{var(dqm_config_table)}} where dataset_id = {{ref(dataset_id)}}') %}
        {% for dqm_id in dqm_ids %}
            select dqm_id 
        {% endfor %}
    {% endfor %}
{% endmacro %}