# [rt-net/RaspberryPiMouse](https://github.com/rt-net/RaspberryPiMouse) wiki

このページでは[Raspberry Pi Mouse](https://www.rt-net.jp/products/raspimouse2)に関するよくある質問やデバイスドライバの動作確認情報をまとめています。

[English Version](https://github.com/rt-net/RaspberryPiMouse/wiki/English)

## 関連ページ

* [GitHub: rt-net/RaspberryPiMouse](https://github.com/rt-net/RaspberryPiMouse)
  * Raspberry Pi Mouseのデバイスドライバ
* [GitHub: rt-net/RaspberryPiMouse_Hardware](https://github.com/rt-net/RaspberryPiMouse_Hardware)
  * Raspberry Piを使った左右独立二輪方式の小型移動プラットフォームロボット、Raspberry Pi Mouseのハードウェア情報
* [GitHub: ryuichiueda/raspimouse_ros](https://github.com/rt-net/ryuichiueda/raspimouse_ros)
  * Raspberry Pi Mouse用ROS1パッケージ(Python版)
* [GitHub: ryuichiueda/raspimouse_ros_2](https://github.com/ryuichiueda/raspimouse_ros_2)
  * Raspberry Pi Mouse用ROS1パッケージ(C++版)
* [GitHub: rt-net/raspimouse2](https://github.com/rt-net/raspimouse2)
  * Raspberry Pi Mouse用ROS2パッケージ
* [ROS Wiki: raspimouse_ros](http://wiki.ros.org/ja/raspimouse_ros)
  * Raspberry Pi MouseのROS Wiki

## よくある質問

### `insmod`ができない

`rtmouse.ko`をビルドしたあとに、`apt upgrade`などによってカーネルのバージョンが変わると、デバイスドライバがインストールできない場合があります。  
[`utils/build_install.bash`](https://github.com/rt-net/RaspberryPiMouse/blob/master/utils/build_install.bash)を再度実行することでデバイスドライバをビルドし直すことができます。

## 動作確認情報

### 株式会社アールティにて動作確認しているOS/カーネル

### ユーザが動作確認したOS/カーネル

* 4.4.0-1080-raspi2
  * 報告者: [@Tiryoh](https://github.com/Tiryoh)
  ```
  $ uname -a
  Linux ubuntu 4.4.0-1080-raspi2 #88-Ubuntu SMP Mon Dec 11 14:23:15 UTC 2017 armv7l armv7l armv7l GNU/Linux
  ```
* 4.15.0-1041-raspi2
  * 報告者: [@Tiryoh](https://github.com/Tiryoh)
  ```
  $ uname -a
  Linux ubuntu 4.15.0-1041-raspi2 #44-Ubuntu SMP PREEMPT Wed Jul 3 15:45:20 UTC 2019 aarch64 aarch64 aarch64 GNU/Linux
  ```
* 4.15.0-1048-raspi2
  * 報告者: [@Tiryoh](https://github.com/Tiryoh)
  ```
  $ uname -a
  Linux ubuntu 4.15.0-1048-raspi2 #52-Ubuntu SMP PREEMPT Wed Sep 18 08:57:33 UTC 2019 aarch64 aarch64 aarch64 GNU/Linux
  ```

* 5.3.0-1021-raspi2
  * 報告者: [@shu-rt](https://github.com/shu-rt)
  ```
  $ uname -a
  Linux ubuntu 5.3.0-1021-raspi2 #23~18.04.1-Ubuntu SMP Fri Mar 27 16:16:12 UTC 2020 aarch64 aarch64 aarch64 GNU/Linux
  ```
