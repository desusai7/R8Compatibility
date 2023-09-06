# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

#-keep com.fasterxml.jackson.annotation.JsonIgnore
#-keep com.fasterxml.jackson.annotation.JsonProperty
#-keep com.squareup.moshi.Json
#-keepnames class com.fasterxml.jackson.** { *; }

#-dontwarn com.fasterxml.jackson.annotation.JsonIgnore
#-dontwarn com.fasterxml.jackson.annotation.JsonProperty
#-dontwarn com.squareup.moshi.Json

#-keep class com.fasterxml.jackson.annotation.JsonIgnore
#-keepattributes com.fasterxml.jackson.annotation.JsonIgnore
#-keep class com.fasterxml.jackson.annotation.JsonProperty
#-keep class com.squareup.moshi.Json

# need to analyze these warnings if they are needed or need to be removed
# repository / reporter module.
-dontwarn com.fasterxml.jackson.annotation.JsonIgnore
-dontwarn com.fasterxml.jackson.annotation.JsonProperty
-dontwarn com.squareup.moshi.Json

# reporter module
-keep class com.rudderstack.android.ruddermetricsreporterandroid.models.LabelEntity { *; }
-keep class com.rudderstack.android.ruddermetricsreporterandroid.models.MetricEntity { *; }



# core sdk
-keep class com.google.gson.reflect.TypeToken { *; }
#-keep class com.rudderstack.android.sdk.core.persistence.DefaultPersistence { *; }
#-keep class com.rudderstack.android.sdk.core.persistence.DefaultPersistenceProvider { *; }

-keep class com.rudderstack.android.sdk.core.persistence.DefaultPersistenceProviderFactory { *; }