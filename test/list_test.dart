import 'package:flutter_test/flutter_test.dart';

List<int> numeros = [1, 2, 3];

void main() {
 test('Adicionar elemento', () {
   numeros.add(4);
   expect(numeros.contains(4), isTrue); // verificação de erros
 });
 test('Adicionar outra lista', () {
   numeros.addAll([5, 6]);
   expect(numeros.contains(5), isTrue);
   expect(numeros.contains(6), isTrue);
 });
 test('Adicionar na posição', () {
   numeros.insert(0, 0);
   expect(numeros.indexOf(0), 0);
   //expect(numeros[0], 0);
 });
 test('Remover elemento', () { // remove o elemento e não a posição
   numeros.remove(2);
   expect(numeros.contains(2), isFalse);
 });
 test('Remover na posição', () { // remove o elemento que está alocado nessa posição
   numeros.removeAt(0);
   expect(numeros.contains(0), isFalse);
 });
 test('Testar tamanho', () { // Tamanho da lista
   expect(numeros.length, 5);
 });
 test('Testar vazio e não vazio', () {
   expect(numeros.isEmpty, isFalse);
   expect(numeros.isNotEmpty, isTrue);
 });
 test('Testar ordenação', () {
   expect(numeros.reversed.toList(), [6, 5, 4, 3, 1]); // Reverter a lista
   expect(numeros, [1, 3, 4, 5, 6]);
   numeros = numeros.reversed.toList();
   expect(numeros, [6, 5, 4, 3, 1]);
   numeros.sort(); // Orderna a lista novamente
   expect(numeros, [1, 3, 4, 5, 6]);
 });
 test('Testar percorrer lista', () {
   int soma = 0;
   for (int numero in numeros) {
     soma += numero;
   }
   expect(soma, 19);
   numeros = numeros.map((numero) => numero * 2).toList(); // Percorrer a lista com função
   expect(numeros, [2, 6, 8, 10, 12]);
   numeros = numeros.where((numero) => numero % 3 == 0).toList(); // Filtro na lista
   expect(numeros, [6, 12]);
 });
}
