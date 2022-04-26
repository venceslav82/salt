copy-db:
  file.managed:
    - name: /home/vagrant/db_setup.sql
    - source: salt://db_setup.sql
    - makedirs: True


