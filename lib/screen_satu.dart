import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Screen_satu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fungsi Get'),
      ),
      body: HomePage(
        // padding: const EdgeInsets.symmetric(horizontal: 150.0, vertical: 10),
        // child: Text(
        //   'First Screen',
        //   style: TextStyle(fontWeight: FontWeight.bold),
       
        // ),
      ),
    
    );
  
  }
}

class HomePageManager {
  final resultNotifier = ValueNotifier<RequestState>(RequestInitial());
  static const urlPrefix = 'https://jsonplaceholder.typicode.com';

  Future<void> makeGetRequest() async {
    resultNotifier.value = RequestLoadInProgress();
    final url = Uri.parse('$urlPrefix/posts');
    Response response = await get(url);
    print('Status code: ${response.statusCode}');
    print('Headers: ${response.headers}');
    print('Body: ${response.body}');
    _handleResponse(response);
  }

  void _handleResponse(Response response) {
    if (response.statusCode >= 400) {
      resultNotifier.value = RequestLoadFailure();
    } else {
      resultNotifier.value = RequestLoadSuccess(response.body);
    }
  }
}

class RequestState {
  const RequestState();
}

class RequestInitial extends RequestState {}

class RequestLoadInProgress extends RequestState {}

class RequestLoadSuccess extends RequestState {
  const RequestLoadSuccess(this.body);
  final String body;
}

class RequestLoadFailure extends RequestState {}

class HomePage extends StatelessWidget {
  final stateManager = HomePageManager();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        Center(
          child: Wrap(
            spacing: 50,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton(
                onPressed: stateManager.makeGetRequest,
                child: Text('GET'),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),

        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Text(
                'Tanggal Lahir ',
                // style: GoogleFonts.lato(
                //     color: Colors.grey[900],
                //     fontSize: 16,
                //     letterSpacing: 0,
                //     fontWeight: FontWeight.bold),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 14.0),
            //   child: Text(
            //     '${tanggallahir}',
            //     // style: GoogleFonts.lato(
            //     //     color: Colors.grey[600],
            //     //     fontSize: 14,
            //     //     letterSpacing: 1,
            //     //     fontWeight: FontWeight.normal),
            //   ),
            // ),
          ],
        ),
        ValueListenableBuilder<RequestState>(
          valueListenable: stateManager.resultNotifier,
          builder: (context, requestState, child) {
            if (requestState is RequestLoadInProgress) {
              return CircularProgressIndicator();
            } else if (requestState is RequestLoadSuccess) {
              return Expanded(child: SingleChildScrollView(child: Text(requestState.body)));
            } else {
              return Container();
            }
          },
        ),
      ],
    );
  }
}