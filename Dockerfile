FROM node:10

LABEL version="2.0.0"
LABEL repository="https://github.com/sergiofreitas/action-yarn"
LABEL homepage="https://github.com/sergiofreitas/action-yarn"
LABEL maintainer="Sergio Freitas <sergio.sgfreitas@gmail.com>"

LABEL com.github.actions.name="GitHub Action for yarn"
LABEL com.github.actions.description="Wraps the yarn CLI to enable common yarn commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="red"

RUN curl -o- -L https://yarnpkg.com/install.sh | bash
COPY LICENSE README.md THIRD_PARTY_NOTICE.md /

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
