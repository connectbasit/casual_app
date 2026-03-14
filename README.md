# casual_app

A Project with Freezed and Patrol Test Package.

## Getting Started

To Initialize Patrol Test follow below steps.

1. Run `flutter pub global activate patrol_cli` in cmd.
2. Run `patrol doctor`
3. Open Environment Variables inside ** User Variable ** Add New Variable
   [Variable Name: ANDROID_HOME , Variable Value: C:\Users\yourname\AppData\Local\Android\Sdk]
   Else Variable Name can be visible inside Android Studio -> Tools -> SDK Manager -> Android SDK Location
4. Add Patrol Package `flutter pub add dev:patrol`
5. In `pubspec.yaml` file add
   patrol:
   app_name: Your App Name
   android:
   package_name: com.example.yourpackagename
6. Go to `android/app/src/androidTest/java/com/example/yourpackage/` [Create one if not found]
7. Paste
    ```
   package com.example.myapp;
    import androidx.test.platform.app.InstrumentationRegistry;
    import org.junit.Test;
    import org.junit.runner.RunWith;
    import org.junit.runners.Parameterized;
    import org.junit.runners.Parameterized.Parameters;
    import pl.leancode.patrol.PatrolJUnitRunner;
    
    @RunWith(Parameterized.class)
    public class MainActivityTest {
    @Parameters(name = "{0}")
    public static Object[] testCases() {
    PatrolJUnitRunner instrumentation = (PatrolJUnitRunner) InstrumentationRegistry.getInstrumentation();
    // replace "MainActivity.class" with "io.flutter.embedding.android.FlutterActivity.class"
    // if in AndroidManifest.xml in manifest/application/activity you have
    //     android:name="io.flutter.embedding.android.FlutterActivity"
    instrumentation.setUp(MainActivity.class);
    instrumentation.waitForPatrolAppService();
    return instrumentation.listDartTests();
    }

    public MainActivityTest(String dartTestName) {
        this.dartTestName = dartTestName;
    }

    private final String dartTestName;

    @Test
    public void runDartTest() {
        PatrolJUnitRunner instrumentation = (PatrolJUnitRunner) InstrumentationRegistry.getInstrumentation();
        instrumentation.runDartTest(dartTestName);
    }
    }
   ```
8. Go to the build.gradle.kts
    -- Inside defaultConfig Add
   `testInstrumentationRunner = "pl.leancode.patrol.PatrolJUnitRunner"`
   `testInstrumentationRunnerArguments["clearPackageData"] = "true"`
    -- Inside Android Section Add
    ```
   testOptions {
    execution = "ANDROIDX_TEST_ORCHESTRATOR"
    }
   ```
   -- Lastly at the bottom add
    ```
   dependencies{
    androidTestUtil("androidx.test:orchestrator:1.5.1")
    }
   ```
9. Create Folder at root `patrol_test` and Add your first test file `filename_test.dart`
10. Launch Test by running command `patrol test -t patrol_test/filename_test.dart` OR 
