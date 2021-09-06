
import 'package:app/model/write_record.dart';

import 'package:app/view/common/form_row.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class hakkinda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hakkinda'),
        backgroundColor: Colors.lightGreen,
      ),
      body: StreamBuilder<Iterable<WriteRecord>>(
        builder: (context, ss) => ListView(
          padding: EdgeInsets.all(2),
          children: [
            FormSection(
              children: [
                FormRow(
                  title: Text('Nasıl Kullanılır?'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () async {
                    final result = await showDialog<String>(
                      context: context,
                      builder: (context) => SimpleDialog(
                        title: Text('Telefonu Yaklaştırın.'),
                        children: [
                          SimpleDialogOption(
                            child: Text(
                                'Telefonunuzu NFC etiketine doğru yaklaştırın.'),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                FormRow(
                  title:Text('Geliştirici Hakkında'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () async {
                    final result = await showDialog<String>(
                      context: context,
                      builder: (context) => SimpleDialog(
                        title: Text('Geliştirici Hakkında'),
                        children: [
                          SimpleDialogOption(
                            child: Text(
                                'NFC Manager adlı uygulamadan bazı kısımlar eklenip silinerek bu uygulama oluşturulmuştur.'),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                FormRow(
                  title:Text('Versiyon'),
                  trailing: Text('0.0.1'),
                ),
                FormRow(
                  title: Text('Gizlilik İlkeleri'),
                  trailing: Icon(Icons.open_in_new),
                  onTap: () => launch('https://nfcmanager.naokiokada.com/privacy-policy/'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
