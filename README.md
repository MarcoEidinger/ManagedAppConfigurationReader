# ManagedAppConfigurationReader
Simple SwiftUI project to showcase how to read the iOS managed app configuration from `UserDefaults`

Note: running the app on a simulator or on a regular device will show no values.

![Running app in iOS simulator](https://cdn.hashnode.com/res/hashnode/image/upload/v1643313220116/qHio5qtAS.png)

Once the app and the AppConfig was installed on a managed device by a MDM solution

![IMG-6298.PNG](https://cdn.hashnode.com/res/hashnode/image/upload/v1643317314937/5itqDy959.png)

then the app will show the values of the respective managed AppConfig.

![IMG-6300.PNG](https://cdn.hashnode.com/res/hashnode/image/upload/v1643317331110/gRV8Tve8T.png)

## Mocking managed app configuration in iOS simulator

<a href="https://youtu.be/Nk1WmTv9K60" target="blank"><img width="635" alt="Screen Shot 2022-01-31 at 6 06 13 PM" src="https://user-images.githubusercontent.com/4176826/151903001-917f64b6-a230-4dfc-9c69-6df7868f2346.png"></a>


Set

```bash
xcrun simctl spawn booted defaults write us.eidinger.ManagedAppConfigurationReader com.apple.configuration.managed -dict 'key1' 'value1'
```

Remove

```bash
xcrun simctl spawn booted defaults delete us.eidinger.ManagedAppConfigurationReader
```

