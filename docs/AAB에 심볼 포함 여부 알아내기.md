aab -> apks 로 변환 -> 압축 품 -> lib/ 폴더 아래의 so에서


```batch
java -jar bundletool-all-1.6.0.jar build-apks --bundle=google_ud_1.03.0101_1030101_real_appguarded.aab --output=ud.apks --mode=universal
```

apks 압축 풀고 이후 lib/arm64-v8a  폴더에서 

```batch
readelf libUE4.so -s
```

같은걸로 체크하려고 하고 있음