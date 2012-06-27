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

*catchUpCallback*
マウスに追いついた後にコールされる関数を指定します。

## Sample
http://bugcloud.github.com/mouse-follower/

## License
MIT
