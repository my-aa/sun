#!/bin/sh
# V2Ray new configuration
# Run V2ray
# Write V2Ray configuration
cat << EOF > /etc/v2ray/config.json
{
    "inbounds": [{
        "port": 8080,
        "protocol": "vmess",
        "settings": {
            "clients": [{
                "id": "f8e62a06-e0e4-45b1-8ccc-f236f59b1fbf",
                "alterId": 0
            }]
        },
        "streamSettings": {
            "network": "ws",
            "wsSettings": {
                "path": "/f8e62a06-e0e4-45b1-8ccc-f236f59b1fbf-vmess"
            }
        }
    }],
    "outbounds": [{
        "protocol": "freedom"
    }]
}
EOF

#Run V2ray

/usr/bin/v2ray/v2ray  run -config=/etc/v2ray/config.json
