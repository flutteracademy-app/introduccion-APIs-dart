import 'dart:convert';
import 'package:http/http.dart' as http;

import 'classes/ejercicio_pais/pais.dart';
import 'classes/ejercicio_reqres/reqres_respuesta.dart';

void getReqRespService() async {
  var url = Uri.parse("https://reqres.in/api/users?page=2");

  http.get(url).then((res) {
    print(res);
    // final body = jsonDecode(res.body);
    // print(body);
    // print('page: ${body['page']}');
    // print('per_page: ${body['per_page']}');
    // print('total_page: ${body['total_pages']}');
    // print('id del tercer elemento: ${body['data'][2]['id']}');

    final resReqRes = ReqResRespuesta.fromJson(res.body);
    print('page: ${resReqRes.page}');
    print('per_page: ${resReqRes.perPage}');
    print('total_page: ${resReqRes.totalPages}');
    print('id del tercer elemento: ${resReqRes.data[2].id}');

    print(resReqRes);
  });
}

void getPais({required String pais}) {
  var url = Uri.parse("https://restcountries.com/v2/name/$pais");

  http.get(url).then((res) {
    print((json.decode(res.body) as List).first);
    final col =
        (json.decode(res.body) as List).map((i) => Pais.fromJson(i)).first;

    print('===========================');
    print('Pais: ${col.name}');
    print('Población: ${col.population}');
    print('Fronteras:');
    for (var f in col.borders!) {
      print('   $f');
    }
    print('Idioma: ${col.languages![0].nativeName}');
    print('Lat: ${col.latlng![0]}');
    print('Lng: ${col.latlng![1]}');
    print('Moneda: ${col.currencies![0].name}');
    print('Bandera: ${col.flag}');
    print('===========================');

    print(col);
  }).catchError((error) {
    print(error);
  });
}
