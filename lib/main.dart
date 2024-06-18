import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8),
            child: Icon(
              Icons.device_hub,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Icon(
              Icons.favorite_outline,
              color: Colors.white,
            ),
          )
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'images/islands.png',
                  fit: BoxFit.cover,
                  height: 350,
                ),
              ),
              const Positioned(
                left: 20,
                bottom: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('江田島市',style: TextStyle(color: Colors.white,fontSize: 25),),
                    Row(
                      children: [Icon(Icons.pin_drop,color: Colors.white,), Text('広島県',style: TextStyle(color: Colors.white),)],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star,color: Colors.white,),
                        Icon(Icons.star,color: Colors.white,),
                        Icon(Icons.star,color: Colors.white,),
                        Icon(Icons.star,color: Colors.white,),
                        Icon(Icons.star_border,color: Colors.white,),
                        Text('4.0',style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconAndName(text: "Wifi", icon: Icon(Icons.wifi)),
              IconAndName(text: "キッチン", icon: Icon(Icons.restaurant)),
              IconAndName(text: "ビーチ", icon: Icon(Icons.beach_access)),
              IconAndName(text: "その他", icon: Icon(Icons.more_horiz)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "詳細",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Text(
                      "瀬戸内海の島々で構成される江田島市は、沿岸のサイクリング ロード、険しい山のハイキング コースで知られています。未使用の砲台が置かれた砲台山の頂上付近は、有名な夕日の鑑賞スポットです。旧兵学校の中にある教育参考館には、第二次世界大戦の日本の戦艦の遺物が展示されています。食事は、現代的なファストフードから、趣のある静かな漁村で提供される刺身や牡蠣まで、幅広く楽しむことができます。"),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.blue,
        label: const Text("ホテルを予約する",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class IconAndName extends StatelessWidget {
  const IconAndName({super.key, required this.text, required this.icon});

  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black.withOpacity(0.5)),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: icon,
            ),
          ),
          Text(text),
        ],
      ),
    );
  }
}
