FROM nginx:stable-alpine

RUN <<EOF
    mkdir -p /home/app
    addgroup --system app && adduser --system --group app \
EOF

USER app

CMD [ "echo", "CircleCI Runner!!!" ]
