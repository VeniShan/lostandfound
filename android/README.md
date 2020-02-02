![Material design library logo](images/logo.png)

# Material Design Android Library

This is a fork of the original <a href="https://github.com/navasmdc/MaterialDesignLibrary"> Material Design Library Project </a>. I have just renamed one of the resource file to eliminate the the conflict error ""Error:Attribute "rippleColor" has already been defined"" which occurs when you use Material Design Library.

You can use the gradle dependency, you have to add these lines in your build.gradle file:

```xml
repositories {
    maven { url "https://jitpack.io" }
}

dependencies {
	  compile 'com.github.vajro:MaterialDesignLibrary:1.6'
}
```
I have modified the "rippleColor" color attribute to "mRippleColor". Hope this helps few people who faced same error as mine.

To know more about how to use the controls and elements, check out the <a href="https://github.com/vajro/MaterialDesignLibrary/blob/master/OriginalREADME.md">Original ReadMe file.</a>
