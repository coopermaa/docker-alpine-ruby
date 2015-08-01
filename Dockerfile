FROM alpine:3.2
MAINTAINER Cooper Maa <coopermaa77@gmail.com>

ENV RUBY_PACKAGES ruby-dev ruby-bundler

# Skip installing gem documentation
RUN echo 'gem: --no-rdoc --no-ri' >> "$HOME/.gemrc"

# Enable auto completion, auto indent and history
RUN echo 'require "irb/completion"' >> "$HOME/.irbrc" && \
    echo 'IRB.conf[:AUTO_INDENT] = true' >> "$HOME/.irbrc" && \
    echo 'IRB.conf[:SAVE_HISTORY] = 1000' >> "$HOME/.irbrc"

# Install packages and remove RI documentations
RUN apk add --update $RUBY_PACKAGES  && \
        rm /var/cache/apk/* && \
        rm -rf /usr/share/ri

CMD [ "irb" ]

