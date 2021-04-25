write_files:
 - path: /etc/nginx/scanner-ips.conf
   owner: root:root
   permissions: '0644'
   content: |
    # US scanners 
    23.239.18.250 off;
    104.237.155.105 off;
    45.56.71.221 off;
    45.79.194.128 off;
    104.237.151.202 off;
    45.33.15.249 off;
    45.33.43.225 off;
    45.79.10.15 off;
    45.33.79.18 off;
    45.79.75.59 off;
    23.239.30.236 off;
    50.116.11.251 off;
    45.56.123.144 off;
    45.79.143.18 off;
    172.104.21.210 off;
    74.207.237.202 off;
    45.79.186.159 off;
    45.79.216.187 off;
    45.33.16.32 off;
    96.126.127.23 off;
    172.104.208.113 off;
    192.81.135.28 off;
    35.236.51.79 off;
    35.236.75.97 off;
    35.236.111.124 off;
    35.236.108.88 off;
    35.236.16.246 off;
    35.236.61.185 off;
    35.236.110.91 off;
    35.236.14.198 off;
    35.235.124.137 off;
    35.236.48.47 off;
    35.236.100.176 off;
    35.236.18.117 off;
    35.235.112.188 off;
    35.236.55.214 off;
    35.236.126.84 off;
    35.236.3.158 off;
    35.236.127.211 off;
    35.236.118.146 off;
    35.236.20.89 off;
    35.236.1.4 off;

    # EU scanners 
    139.162.130.66 off;
    139.162.144.202 off;
    139.162.151.10 off;
    139.162.151.155 off;
    139.162.156.102 off;
    139.162.157.131 off;
    139.162.158.79 off;
    139.162.159.137 off;
    139.162.159.244 off;
    139.162.163.61 off;
    139.162.164.41 off;
    139.162.166.202 off;
    139.162.167.19 off;
    139.162.167.51 off;
    139.162.168.17 off;
    139.162.170.84 off;
    139.162.171.141 off;
    139.162.172.35 off;
    139.162.174.220 off;
    139.162.174.26 off;
    139.162.175.71 off;
    139.162.176.169 off;
    139.162.178.148 off;
    139.162.179.214 off;
    139.162.180.37 off;
    139.162.182.156 off;
    139.162.182.20 off;
    139.162.184.225 off;
    139.162.185.243 off;
    139.162.186.136 off;
    139.162.187.138 off;
    139.162.188.246 off;
    139.162.190.22 off;
    139.162.190.86 off;
    139.162.191.89 off;
    85.90.246.120 off;
    104.200.29.36 off;
    104.237.151.23 off;
    173.230.130.253 off;
    173.230.138.206 off;
    173.230.156.200 off;
    173.230.158.207 off;
    173.255.192.83 off;
    173.255.193.92 off;
    173.255.200.80 off;
    173.255.214.180 off;
    192.155.82.205 off;
    23.239.11.21 off;
    23.92.18.13 off;
    23.92.30.204 off;
    45.33.105.35 off;
    45.33.33.19 off;
    45.33.41.31 off;
    45.33.64.71 off;
    45.33.65.37 off;
    45.33.72.81 off;
    45.33.73.43 off;
    45.33.80.65 off;
    45.33.81.109 off;
    45.33.88.42 off;
    45.33.97.86 off;
    45.33.98.89 off;
    45.56.102.9 off;
    45.56.104.7 off;
    45.56.113.41 off;
    45.56.114.24 off;
    45.56.119.39 off;
    50.116.35.43 off;
    50.116.42.181 off;
    50.116.43.110 off;
    66.175.222.237 off;
    66.228.58.101 off;
    69.164.202.55 off;
    72.14.181.105 off;
    72.14.184.100 off;
    72.14.191.76 off;
    172.104.150.243 off;
    139.162.190.165 off;
    139.162.130.123 off;
    139.162.132.87 off;
    139.162.145.238 off;
    139.162.146.245 off;
    139.162.162.71 off;
    139.162.171.208 off;
    139.162.184.33 off;
    139.162.186.129 off;
    172.104.128.103 off;
    172.104.128.67 off;
    172.104.139.37 off;
    172.104.146.90 off;
    172.104.151.59 off;
    172.104.152.244 off;
    172.104.152.96 off;
    172.104.154.128 off;
    172.104.229.59 off;
    172.104.250.27 off;
    172.104.252.112 off;
    45.33.115.7 off;
    45.56.69.211 off;
    45.79.16.240 off;
    50.116.23.110 off;
    85.90.246.49 off;
    172.104.139.18 off;
    172.104.152.28 off;
    139.162.177.83 off;
    172.104.240.115 off;
    172.105.64.135 off;
    139.162.153.16 off;
    172.104.241.162 off;
    139.162.167.48 off;
    172.104.233.100 off;
    172.104.157.26 off;
    172.105.65.182 off;
    178.32.42.221 off;
    46.105.75.84 off;
    51.254.85.145 off;
    188.165.30.182 off;
    188.165.136.41 off;
    188.165.137.10 off;
    54.36.135.252 off;
    54.36.135.253 off;
    54.36.135.254 off;
    54.36.135.255 off;
    54.36.131.128 off;
    54.36.131.129 off;
 - path: /etc/nginx/conf.d/wallarm-acl.conf
   owner: root:root
   permissions: '0644'
   content: |
    wallarm_acl_db default {
      wallarm_acl_path /var/cache/nginx/wallarm_acl_default;
      wallarm_acl_mapsize 64m;
    }
    server {
      listen 127.0.0.9:80;
      server_name localhost;
      allow 127.0.0.0/8;
      deny all;
      access_log off;
      location /wallarm-acl {
        wallarm_acl default;
        wallarm_acl_api on;
      }
    }
 - path: /etc/nginx/sites-available/default
   owner: root:root
   permissions: '0644'
   content: |
     limit_req_zone $binary_remote_addr zone=mylimit:10m rate=5r/s;
     map $remote_addr $wallarm_mode_real {
     default block;
       include /etc/nginx/scanner-ips.conf;
     }
     server {
       listen 80 default_server;
       server_name _;
       # wallarm_acl default;
       wallarm_mode $wallarm_mode_real;
       # wallarm_instance 1;
       location /healthcheck {
         return 200;
       }
       location / {
         limit_req zone=mylimit burst=10 nodelay;
         # setting the address for request forwarding
         proxy_pass http://${wallarm_user_domain};
         proxy_set_header Host $host;
         proxy_set_header X-Real-IP $remote_addr;
         proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
         set_real_ip_from 172.31.0.0/16;
         real_ip_header X-Forwarded-For;
       }
     }
     server { 
       listen 443 ssl default_server;
       server_name _;
       # wallarm_acl default;
       ssl_protocols TLSv1.2;
       ssl_ciphers         HIGH:!aNULL:!MD5;
       ssl_certificate /etc/nginx/cert.pem;
       ssl_certificate_key /etc/nginx/key.pem;
       wallarm_mode block;
       # wallarm_instance 1;
       location /healthcheck {
         return 200;
       }
       location / {
         limit_req zone=mylimit burst=10 nodelay;
         # setting the address for request forwarding
         proxy_pass http://${wallarm_user_domain};
         proxy_set_header Host $host;
         proxy_set_header X-Real-IP $remote_addr;
         proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
       }
     }
 - path: /etc/nginx/key.pem
   # This is a self-signed SSL certificate
   owner: root:root
   permissions: '0600'
   content: |
    -----BEGIN PRIVATE KEY-----
    MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDB6BggatWgySvo
    0M0k5+AzRaTFgSm32AZndx7v7qTbhJy8SaGgrdBz6rRLd/kFY3c3uT/yYtNGsKlb
    watSUHnyHTvwmfiQaZzJ4A97WqYn8bLke/seYRSYe+MYWLzykBlyS8qaauiGDLoF
    QhJ7UYlSJs1PJOqgu3NGIPy5PHVkknk/ykEQPIfjXE7pHftdC6/F+hkzyNlXehfo
    q3GHlDI/8UPexvg+QbluwtOe8ypZXbSqnA29Vpy8gw2Gyl9504El6r62EFL0lM5Y
    U1E7e1sUp1QiMTvqN1HGtuvOcfDS7VjgjgYKkJ+YL1vUKFTeMSq+fA+i1MPPsu/I
    RnbfCnD7AgMBAAECggEAWyKMhF/x+9nRK2FHqbrZov9ui+1DAEcl62cPQVF2Zj4T
    tGMe9ff7ax+6kWXXwnKXS7djmLZd+nF5h8ikjtGIHwUicNjM/ILG0BLg8+cNBOUS
    YVTsF8Ek/u3rNDwwwgh8DT4WATGSC77bhzEgopkV42idQj9ljxnK+gDzBtSlkBh9
    j7iL6C7II8dcnElu4HVY8Iuu67F9dsmNW76NJ7iqXuQZ3wQ4VUZ2FfaThBfHnPlq
    4k1bekCR5x5DuTPe90M4B4GIqxbBVo3yge1zvvVBY/O2dZDNyFgrxOQ2LQ4+4Y2P
    x7rD9QH7eLj03HU+GP0LLDeDWyIbEcZpmy7PvicYYQKBgQDxPof//pQm72FiPfmh
    WTRzuWWdp72159jp6n/y8FP6IJNDhSA8p7FlffJ8cbQl9zpSwNeMg8MOv3ZAYNtz
    /sYL17QKNLikRw1kom6PB2X738LVpVhoiYA5WtIufJoYxYdp665MhQygz480K/F1
    QEyQLBTedpAdF8waeohRDe/SMwKBgQDNxFZSBIU4Sk3MznbJ3gov2WlRpbz4g9V4
    4dRi3NEQrnbx8i0+7NOvzv+iouvXcm+lkXfLcluWCUhaIFW+dUQ3zAgPvWdWRQOO
    WNvikEuwz+LlGmY0KO5hVatvAGPv7HL4iXCB6/4ZQdTzZsWBO8MXhyCiTIUYHd3+
    y9pIFX9uGQKBgESU2UbeUbHL5axvH/NNj8rCTvAFyrnW4mSFZMBksArwjczpIKP9
    rEHFD1VvYZ5VbUAvUFfC8YXUykI9BsYwDI87UBSCrmcNR/Ju9u00VjrHfvULn1mA
    lXI4rn3GsGwQY5GqDY/1VwS0XOqg/3CsyddGoNwpaojKxhxU70HTq3TfAoGADJ5U
    uNTkIo6T9NJYgIqoT0Ti64nha9AR4EbhEmr+OyqnyrCSS8CUPrzP+nZJRj4TULD6
    CrTpnurU0AoZmANy+oT9nZF869JxpGIYoe09Zwtom6ohyGMWM0vgpn78ofL7Hfi3
    uI/zVjMuTvrnc8Rpc2DrBGjy5Ia4XW685RzEYskCgYEArXW5DdZuRQxX9CJmGoWK
    Sjxp1QLXzrHzhSeBTTYKWrP0YHBaDHhM6LBzbI21dAeV4qOKfDIduNWrzqSsxRcp
    PwyquUKmj6Bv0j64TwQKnHmsawVd4wB6FhpMUchNxszIKBhsLXXSdRJjpsL5Hfvt
    PG4rVUW5036CMHgnlP5zZLk=
    -----END PRIVATE KEY-----
 - path: /etc/nginx/cert.pem
   # This is a self-signed SSL certificate
   owner: root:root
   permissions: '0644'
   content: |
    -----BEGIN CERTIFICATE-----
    MIIDVjCCAj4CCQDwQNr36lh8ZjANBgkqhkiG9w0BAQsFADBtMQswCQYDVQQGEwJV
    UzELMAkGA1UECAwCQ0ExEjAQBgNVBAcMCVNhbiBNYXRlbzEQMA4GA1UECgwHV2Fs
    bGFybTELMAkGA1UECwwCSVQxHjAcBgNVBAMMFSoudmljdG9yLWdhcnR2aWNoLmNv
    bTAeFw0yMDAyMjkwNjQyNDdaFw0yMTAyMjgwNjQyNDdaMG0xCzAJBgNVBAYTAlVT
    MQswCQYDVQQIDAJDQTESMBAGA1UEBwwJU2FuIE1hdGVvMRAwDgYDVQQKDAdXYWxs
    YXJtMQswCQYDVQQLDAJJVDEeMBwGA1UEAwwVKi52aWN0b3ItZ2FydHZpY2guY29t
    MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwegYIGrVoMkr6NDNJOfg
    M0WkxYEpt9gGZ3ce7+6k24ScvEmhoK3Qc+q0S3f5BWN3N7k/8mLTRrCpW8GrUlB5
    8h078Jn4kGmcyeAPe1qmJ/Gy5Hv7HmEUmHvjGFi88pAZckvKmmrohgy6BUISe1GJ
    UibNTyTqoLtzRiD8uTx1ZJJ5P8pBEDyH41xO6R37XQuvxfoZM8jZV3oX6Ktxh5Qy
    P/FD3sb4PkG5bsLTnvMqWV20qpwNvVacvIMNhspfedOBJeq+thBS9JTOWFNRO3tb
    FKdUIjE76jdRxrbrznHw0u1Y4I4GCpCfmC9b1ChU3jEqvnwPotTDz7LvyEZ23wpw
    +wIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQAhfJ8OCvF3cMJrKr2RTIpq7impRvjY
    lNaT/hP5S8Y0YHtWXdxP/vMk0tZSD7NAKcd0Zz4ocnezYhNxqeZcL5Vd8EUXqGpE
    hZ7r02pkHwIglprF6iuQY/qRE566zUjcVQieYqTb4rki42fSVAck7lv+LIg+CCOg
    C1dz11284x/8hyy06M1zbtET0oniEnZuDFOtbMTLUqR9jLDtqJsgOgcD7Y3Y+WXI
    9DnIZdXRjK+d45ytY6c9SqV/ienxbvjx2G3DG2kiYGfTPQOUVC+UX8KtqNEDpxOZ
    ooqMBlOXYxLJ2I9UcCu21Wj+CXJAPPbj/UZ79t59nC2yB5OmrniOFsMC
    -----END CERTIFICATE-----
runcmd:
 - /usr/share/wallarm-common/addnode --force -H ${wallarm_api_domain} -u ${wallarm_deploy_username} -p '${wallarm_deploy_password}' --name `hostname`
 - 'echo "sync_blacklist:" >> /etc/wallarm/node.yaml'
 - 'echo "  nginx_url: http://127.0.0.9/wallarm-acl" >> /etc/wallarm/node.yaml'
 - mkdir /var/cache/nginx/
 - chown www-data /var/cache/nginx/
 - nginx -t
 - service nginx start
 - service nginx reload
 - [ sed, -i, -Ee, 's/^#(.*sync-blacklist.*)/\1/', /etc/cron.d/wallarm-node-nginx ]
EOF