#!/bin/sh
# Gradle startup script

if [ -z "$JAVA_HOME" ]; then
  JAVA_CMD=java
else
  JAVA_CMD="$JAVA_HOME/bin/java"
fi

DIRNAME=$(dirname "$0")
APP_HOME=$(cd "$DIRNAME" && pwd)
CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar
exec "$JAVA_CMD" -Xmx64m -cp "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
