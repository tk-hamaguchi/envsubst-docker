FROM alpine:latest AS builder

RUN apk --no-cache add libintl gettext


FROM alpine:latest

RUN apk --no-cache add libintl

COPY --from=builder /usr/bin/envsubst /usr/local/bin/envsubst
