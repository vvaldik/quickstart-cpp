ANDROID_NDK_PATH="" # <- Please set paths
ANDROID_SDK_PATH=""
FIREBASE_CPP_SDK_PATH=""

if [[ $ANDROID_NDK_PATH == "" ||  $ANDROID_SDK_PATH == "" || $FIREBASE_CPP_SDK_PATH == "" ]] ; then
	echo Please specify Android NDK, Android SDK and Firebase C++ SDK paths inside configure.sh
	exit
fi

echo Configuring Android NDK path to: $ANDROID_NDK_PATH
echo Configuring Android SDK path to: $ANDROID_SDK_PATH
echo Configuring Firebase C++ SDK path to: $FIREBASE_CPP_SDK_PATH

echo ndk.dir=$ANDROID_NDK_PATH >  testapp/local.properties
echo sdk.dir=$ANDROID_SDK_PATH >> testapp/local.properties
echo systemProp.firebase_cpp_sdk.dir=$FIREBASE_CPP_SDK_PATH > testapp/gradle.properties


