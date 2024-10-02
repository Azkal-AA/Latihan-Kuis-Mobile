import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail UPNVY"),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Image.asset("images/upn.jpg"),
          Text(
              "Arah Pendidikan\n\nArah pendidikan UPN ”Veteran” Yogyakarta adalah mengembangkan ilmu pengetahuan dan teknologi yang dilandasi oleh nilai-nilai kedisiplinan, kejuangan, kreativitas, keunggulan, kebangsaan, dan kejujuran dalam rangka menunjang pembangunan nasional melalui bidang pendidikan tinggi dalam rangka terciptanya sumber daya manusia yang unggul di era global dengan dilandasi jiwa bela negara.\n\nTujuan Pendidikan\n\nPendidikan di UPN ”Veteran” Yogyakarta bertujuan untuk:\n1. Menyelenggarakan pendidikan dan pengajaran yang berkualitas guna menghasilkan lulusan berdaya saing global yang memiliki jiwa disiplin, berdaya juang dan, kreatif serta berwawasan kebangsaan dan mampu menjadi komponen pendukung dalam sistem pertahanan negara;\n2. Meningkatkan kuantitas dan kualitas penelitian guna:\na. Menunjang pengembangan mutu pendidikan dan pengajaran;\nb. Mengembangkan dan menerapkan ilmu pengetahuan dan teknologi (IPTEK) untuk menunjang pengabdian kepada masyarakat; dan\nc. Menghasilkan modal intelektual dan karya ilmiah dalam rangka menunjang pembangunan nasional; dan\n\n3. Pengembangan kegiatan pengabdian kepada masyarakat melalui\na. Penyediaan layanan ilmu pengetahuan dan teknologi (IPTEK) dalam rangka meningkatkan kesejahteraan masyarakat;\nb. Peningkatan keberdayaan masyarakat; dan\nc. Peningkatan reputasi UPN ”Veteran” Yogyakarta.")
        ],
      ),
    );
  }
}
