#! /bin/sh
check(){
    command="$1"
    path=`which $command`
    if [ "$?" -eq 1 ]
    then
	echo "install $command"
	exit
    else
	echo $command
    fi
    
}
check gradle
check android
git clone https://github.com/kuri65536/sl4a.git
cd sl4a/android/ScriptingLayerForAndroid 
echo "sdk.dir="$path | cut -d "/" -f1-4 > local.properties
echo "android.useDeprecatedNdk=true" > gradle.properties
gradle assembleDebug
