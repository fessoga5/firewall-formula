firewall:
  rules:
    # here is output of our iptables-save command
    v4: |
      # Generated by iptables-save v1.4.21 on Tue Jan 20 11:36:41 2015
      *filter
      :INPUT ACCEPT [0:0]
      :FORWARD DROP [0:0]
      :OUTPUT ACCEPT [13:1256]
      -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
      -A INPUT -i lo -j ACCEPT
      COMMIT
      # Completed on Tue Jan 20 11:36:41 2015

