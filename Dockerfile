FROM docker:19.03.2 as runtime

LABEL "version"="0.1.0"
LABEL "repository"="https://github.com/Ybrin/retag-docker-image"
LABEL "homepage"="https://github.com/Ybrin/retag-docker-image"
LABEL "maintainer"="Koray Koska <koray@koska.at>"
LABEL "com.github.actions.name"="Retag Docker Image"
LABEL "com.github.actions.description"="Retag a Docker Image and push it to the registry"
LABEL "com.github.actions.icon"="message-square"
LABEL "com.github.actions.color"="gray-dark"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]