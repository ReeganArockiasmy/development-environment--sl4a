## Prerequirement
- Install android sdk
- Install Gradle

## Run
- Run the *devSetting.sh* in your terminal

## Debug
If get *Build Failed* Error
```xml
:mergeArmDebugResources FAILED

FAILURE: Build failed with an exception.

* What went wrong:
Execution failed for task ':mergeArmDebugResources'.
> /tmp/gradleProject/sl4a/android/ScriptingLayerForAndroid/res/drawable/atari_small_notice.txt: Error: The file name must end with .xml or .png

* Try:
Run with --stacktrace option to get the stack trace. Run with --info or --debug option to get more log output.

BUILD FAILED
```

And change *build.gradle* file

```xml
    dependencies {
            classpath 'com.android.tools.build:gradle:1.1.0'
	     }
```

## Build Success

```sh
	cd sl4a/android/ScriptingLayerForAndroid
	cd gradle assembleDebug
```
add go to apk folder

```sh
	sl4a/android/ScriptingLayerForAndroid/build/outputs/apk$
```

Ref
 SL4A https://github.com/kuri65536/sl4a