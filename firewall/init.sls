firewall:
  cmd.wait:
    - name: service iptables-persistent reload
    - watch:
      - file: /etc/iptables/rules.v4
    - require:
      - pkg: iptables-persistent

/etc/iptables/rules.v4:
  file.managed:
    - source: salt://firewall/files/multiline.file
    - template: jinja
    - context:
        data:
          {% for item in pillar['firewall']['rules']['v4'].split('\n') %}
          - "{{ item }}"
          {% endfor %}

iptables-persistent:
  pkg:
    - installed
