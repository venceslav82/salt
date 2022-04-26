copy-index-page:
  file.managed:
    - name: /var/www/html/index.php
    - source: salt://index.php
    - makedirs: True

copy-image:
  file.managed:
    - name: /var/www/html/bulgaria-map.png
    - source: salt://bulgaria-map.png
    - makedirs: True