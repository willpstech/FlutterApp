import 'package:flutter_test/flutter_test.dart';

Map<String, List<double>> alunos = { // map com list
 'Maria': [8.0, 9.0],
 'Bruna': [7.0, 7.0],
 'Carla': [10.0, 9.0],
};

void main() {
 test('Adicionar elemento', () {
   alunos.putIfAbsent('Elena', () => [9.0, 8.0]); // Inserir elementos - Chave e os elementos
   expect(alunos.containsKey('Elena'), isTrue); // ConferÊncia se tem a chave elena
   expect(alunos['Elena'], [9.0, 8.0]); // Conferência se tem os elementos das notas
 });
 test('Adicionar outro dicionário', () { // Adicionar vários elementos
   alunos.addAll({
     'Elena': [9.0, 8.0],
     'Luiza': [8.0, 9.0],
   });
   expect(alunos.containsKey('Elena'), isTrue);
   expect(alunos.containsKey('Luiza'), isTrue);
 });
 test('Remover elemento', () {
   alunos.remove('Bruna');
   expect(alunos.containsKey('Bruna'), isFalse);
 });
 test('Atualizar elemento', () {
   alunos.update('Carla', (value) => [9.0, 8.0]); // alteração usando função
   expect(alunos['Carla'], [9.0, 8.0]);
   alunos['Carla'] = [8.0, 9.0]; // alteração direta
   expect(alunos['Carla'], [8.0, 9.0]);
 });
 test('Testar percorrer dicionário', () {
   expect(alunos.keys, ['Maria', 'Carla', 'Elena', 'Luiza']);
   expect(alunos.values, [
     [8.0, 9.0],
     [8.0, 9.0],
     [9.0, 8.0],
     [8.0, 9.0],
   ]);
   double soma = 0;
   alunos.forEach((key, value) { // Usando o forEach para percorrer o dicionário
     for (double nota in value) {
       soma += nota;
     }
   });
   expect(soma, 68.0);
 });
  test('Calcular médias', () {
  Map<String, double> medias = {}; // Criando um novo Map
  alunos.forEach((key, value){
    double total = 0;
    for (double notas in value) {
      total += notas;
    }
    medias[key] = total / value.length; // Recebe a soma da chave string e divide pela quantidade de valores existentes nessa cahve
  });
   expect(medias, {'Maria': 8.5, 'Carla': 8.5, 'Elena': 8.5, 'Luiza': 8.5});
 });
  
 
}
