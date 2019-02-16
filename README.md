# android-gradle-action

Run Android Gradle tasks with GitHub Actions

## Usage

You may need to provide your own Android licence in order to run the action. You can find it on your own machine in the `$ANDROID_HOME/license` folder, and add the file content as a GitHub secret named `$ANDROID_LICENCE`.

## Example

```
workflow "Testing" {
  on = "push"
  resolves = [
    "Unit tests",
  ]
}

action "Unit tests" {
  uses = "Raul6469/android-gradle-action@master"
  secrets = ["ANDROID_LICENCE"]
  args = "test"
}
```