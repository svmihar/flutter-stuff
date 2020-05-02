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
[cheatsheet](https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e)
[layouting, mirip div](https://flutter.dev/docs/development/ui/widgets/layout)
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
- custom fonts, with assets on `pubspec.yaml`
- materialpalette.com buat bikin layout warna yang baik dan benar sesuai guideline material
    - ada colors, icon sama palette
- kalo child nya gak punya property padding, flutter punya padding class sendiri 

# section 7
![](https://i.imgur.com/6etXHsV.png)
state stuff in fluttter
## expanded class
- membuat semua widget nya jadi responsive (menyesuaikan screen size)
     - pake flex juga ini -_-
- tiap button punya padding sendiri, jadi jangan digabung2 dengan child padding lainnya
- `(){}` is basically a lambda function (voidCallback)
## stateful 
- di stateful adalah class yang bakal di cek apakah ada perubahan atau nggak (mutable)
- kalau ada perubahan (marked dirty maka bakal di hot reload ), how does flutter check ya buat kotor apa nggak nya hm meninggal fix garbage collectionnya ini 
    - oh iya kan pake ABT, jadi kalo ada batang yang berubah tinggal parent batangnya aja yang di reload 
    - tapi gimana caranya dia constantly cek batang mana yang berubah ya kalo mutable begini hmm :/


# arrow syntax 
only works on a single line expression
```dart 
void tambah({int a1, int a2}){
    return n1+n2; 
}
```
ekuivalen dengan 
``dart
void tambah({int a1, int a2})=>a1+a2;
```