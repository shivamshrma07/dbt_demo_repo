{% macro convert_to_multiple_of_10(value) %}
  SELECT ROUND({{ value }} / 10) * 10 AS value_multiple_of_10
{% endmacro %}