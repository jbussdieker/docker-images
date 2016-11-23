base:
  '*':
{% for role in grains['roles']|default([]) %}
{% if salt['cp.hash_file']("salt://" + role + "/init.sls", saltenv='base') %}
    - {{ role }}
{% endif %}
{% endfor %}
