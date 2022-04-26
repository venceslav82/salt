mariadb-server:
  pkg.installed:
    - name: mariadb
    - name: mariadb-server
    - name: python3-PyMySQL

  service:
    - running
    - enable: True
    - watch:
      - pkg: mariadb-server


