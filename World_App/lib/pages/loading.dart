import 'package:flutter/material.dart';
import 'package:world_app/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'loading';

  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime();
    print(instance.time);
    setState(() {
      time = instance.time;
    });
    if(context.mounted) {
      Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
       'flag': instance.flag,
      'time': instance.time,
    });
    }
}

  @override
  void initState() {
    super.initState();
    setupWorldTime();

  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: SpinKitWave(
          color: Colors.black,
          size: 50.0,
        ),
        ),
    );
  }
}
