#
# NOTE: THIS DOCKERFILE IS GENERATED VIA "update.sh"
#
# PLEASE DO NOT EDIT IT DIRECTLY.
#
FROM mileschou/phalcon:7.3-alpine

LABEL repository="https://github.com/MilesChou/phalcon-action" \
    homepage="https://github.com/MilesChou/phalcon-action"

# Install the devtools
RUN docker-phalcon-install-devtools
RUN cd /usr/local/bin && \
  php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
  php composer-setup.php && \
  php -r "unlink('composer-setup.php');" && \
  mv composer.phar composer
COPY phalcon-dev-entrypoint /usr/local/bin/phalcon-dev-entrypoint

ENTRYPOINT ["/usr/local/bin/phalcon-dev-entrypoint"]
