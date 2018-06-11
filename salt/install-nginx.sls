nginx service:
  service.running:
    - name: nginx
    - watch:
      - file: /etc/nginx/nginx.conf
    - require:
      - pkg: nginx

nginx:
  pkg.installed

/etc/nginx/nginx.conf:
  file.managed:
    - source: salt://nginx.conf
    - template: jinja
    - defaults:
      port: {{ pillar['port'] }}
    - require:
      - pkg: nginx
