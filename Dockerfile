#
# NOTE: THIS DOCKERFILE IS GENERATED VIA "update.sh"
#
# PLEASE DO NOT EDIT IT DIRECTLY.
#
FROM ghcr.io/juratherm/baseimage:v3.4.5-7.3-fpm

COPY phalcon-dev-entrypoint /usr/local/bin/phalcon-dev-entrypoint

ENTRYPOINT ["/usr/local/bin/phalcon-dev-entrypoint"]
