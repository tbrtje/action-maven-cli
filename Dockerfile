FROM maven:3-adoptopenjdk-16

LABEL "name"="Maven CLI Action"
LABEL "maintainer"="Thies Johann Brötje <kontakt+dev@thiesbroetje.de>"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="GitHub Action for Maven"
LABEL "com.github.actions.description"="Wraps the Maven CLI to enable Maven commands."
LABEL "com.github.actions.icon"="package"
LABEL "com.github.actions.color"="orange"
COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
