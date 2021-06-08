FROM   registry.gitlab.com/fdroid/ci-images-client

LABEL "com.github.actions.name"="Gradle Android"
LABEL "com.github.actions.description"="Run Android Gradle tasks"
LABEL "com.github.actions.icon"="play"
LABEL "com.github.actions.color"="green"

LABEL "repository"="http://github.com/jojo243/android-gradle-action"

COPY  entrypoint.sh .

RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
