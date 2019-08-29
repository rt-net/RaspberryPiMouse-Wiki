# [rt-net/RaspberryPiMouse](https://github.com/rt-net/RaspberryPiMouse) wiki

このページでは[Raspberry Pi Mouse](https://www.rt-net.jp/products/raspimouse2)に関するよくある質問やデバイスドライバの動作確認情報をまとめています。

## よくある質問

### `insmod`ができない

`rtmouse.ko`をビルドしたあとに、`apt upgrade`などによってカーネルのバージョンが変わると、デバイスドライバがインストールできない場合があります。  
[`utils/build_install.bash`](https://github.com/rt-net/RaspberryPiMouse/blob/master/utils/build_install.bash)を再度実行することでデバイスドライバをビルドし直すことができます。

## 動作確認情報

### 株式会社アールティにて動作確認しているOS/カーネル

### ユーザが動作確認したOS/カーネル