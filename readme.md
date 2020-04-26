# notes 
![](https://i.imgur.com/U2SR4Kd.png)
- everything's a widget

## section 3
- belajar cara handle asset berupa image
- yaml file indentation 
- set custom icon buat flutter app nya 
    - default folder 
    - cara generate di appicon.co

## section 4 
- cara deploy ke physical device
    - android
    - ios      

## section 5
[see iampoor](/iampoor/)

## section 6 
hot reload
- setiap widget yang mau di hot reload harus ada di widget
    - stateless / stateful
    - harus ada widget build
- bisa langsung ganti tanpa restart
- hanya class dengan stateless widget yang di call gak perlu di compile dari awal 
    - terus bisa banyak gak ya ini? 
- gak ngehapus variable yang ke store di runtime
hot restart 
- resets the flutter kernel 


bisa diibaratkan kayak kernel restart vs kernel interrupt di ipython kernel, only adding the things that are changed.  

### container 
![cheatsheet](https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e)
![layouting, mirip div](https://flutter.dev/docs/development/ui/widgets/layout)
- kalo gak ada child otomatis paling gede
- gak perlu widget nya ketutupan dengan device screen nya (notch, edge screen, camera splotch) punya safe area di `SafeArea` di `body`
    - safe area guidelines bisa di liat di flutter inspector di devtools nya

### layouting columns, rows and stacks
- column 
```Dart
child: Column (
    children: <Widget>[...],
)
```
- mainAxisAlignment and crossAxisAlignment is your bible
- `SizedBox` itu kayak `<br>` di html