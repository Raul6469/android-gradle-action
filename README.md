# android-gradle-action

Run Android Gradle tasks with GitHub Actions.

## Note
This action may not be required to run Android builds.

Instead, you can simply try to execute the gradle wrapper in the GitHub action VM with :

```yaml
- name: Run tests
  run: ./gradlew test
```

## Example

```yaml
name: Android Gradle CI

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2

    - name: Run Gradle command
      uses: jojo243/android-gradle-action@2.0.0
      with:
        # The gradle command you wish to run (required)
        # Here, `./gradlew test` will be run
        script: test

        # In some cases, you may need to provide
        # Android license agreement id
        # You can find it on your own machine under
        # `$ANDROID_HOME/licenses/android-sdk-license`,
        # and add the file content as a GitHub secret named `$ANDROID_LICENSE`.
        android-license: ${{ secrets.ANDROID_LICENSE }}
```
