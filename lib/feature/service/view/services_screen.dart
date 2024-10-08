import 'package:get/get.dart';
import '../../../utils/core_export.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({super.key}) ;

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AddressAppBar(),
      body: SingleChildScrollView(
        child: Center(child: SizedBox(width: Dimensions.webMaxWidth, child: Column(children: [
          ServiceView(service: Get.find<ServiceController>().popularServiceList!),
        ]))),
      ),
    );
  }
}
