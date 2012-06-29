# mouseFollower - jQuery Plugin

マウスに追従するgistでいいやつです。

## How to use
対象の要素に"position:absolute;"をつけて幅、高さを指定しておきます。
```css
#follower01, #follower02 {
  position: absolute;
  top: 0;
  left: 0;
}
#follower01 {
  width: 150px;
  height: 150px;
}
#follower02 {
  width: 100px;
  height: 100px;
}
```

HTMLでscriptを読み込みます。easingプラグインを使えます。
```html
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.mouseFollower.js"></script>
```

followMouse()でマウスに追従するようになります。
```javascript
$(function() {
  $("#follower01").followMouse()
  $("#follower02").followMouse({
    animationSpeed: 800,
    easingFunction: "easeOutBack",
    noFollowDistance: 50,
    catchUpCallback: function() {
      console.log(":D");
    }
  })
})
```

## Options

*animationSpeed*
追従するときのスピードを数値で指定します。デフォルト値は
**100**
です。

*easingFunction*
追従するときのイージングを文字列で指定します。デフォルト値は
**linear**
です。

*noFollowDistance*
マウスの動いた距離がこの値以下の場合はコンテンツを追従させません。デフォルト値は
**0**
です。

*distance*
追従するコンテンツの中心からマウスまでの距離を数値の配列で指定します。[topの値, leftの値]です。
デフォルト値は
**[0,0]**です。

*position*
*distance*をデフォルト値以外で指定した場合のみ有効です。マウスから見て、追従するコンテンツがどの位置に配置されるかを文字列で指定します。
**top-left**
,
**top-right**
,
**bottom-left**
,
**bottom-right**
のいずれかを指定します。デフォルト値は
**bottom-right**
です。

*catchUpCallback*
マウスに追いついた後にコールされる関数を指定します。

## Sample
http://bugcloud.github.com/mouse-follower/

## License
MIT
