FROM alpine

COPY ./gopath/bin/frontend /frontend
COPY ./gopath/bin/frontend /gifcreator
COPY ./gopath/bin/frontend /render

COPY ./frontend/static /static
COPY ./frontend/templates /templates

ENV FRONTEND_TEMPLATES_DIR=/templates
ENV FRONTEND_STATIC_DIR=/static

ENTRYPOINT /frontend
