#
# NOTE: THIS DOCKERFILE IS GENERATED VIA "update.sh"
#
# PLEASE DO NOT EDIT IT DIRECTLY.
#
FROM ghcr.io/juratherm/baseimage:4.1.3-7.4-fpm

COPY phalcon-dev-entrypoint /usr/local/bin/phalcon-dev-entrypoint

ENTRYPOINT ["/usr/local/bin/phalcon-dev-entrypoint"]
