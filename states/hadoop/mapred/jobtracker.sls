{% if 'jobtracker' in grains['roles'] %}

include:
  - hadoop.config
  - hadoop.hdfs.add_tempdir

hadoop-jobtracker:
  service.running:
    - enable: True
    - require:
      - file.managed: hadoop-init-scripts
{% endif %}