
// Verifica se um número é primo
bool isPrime(int number) {
  // Números menores ou iguais a 1 não são primos
  if (number <= 1) throw ArgumentError('Número não é Primo.');

  // 2 e 3 são primos
  if (number <= 3) {
    return true;
  }

  // Elimina números pares e múltiplos de 3
  if (number % 2 == 0 || number % 3 == 0) {
    return false;
  }

  // Checa divisores começando de 5 até a raiz quadrada do número
  for (int i = 5; i * i <= number; i += 6) {
    if (number % i == 0 || number % (i + 2) == 0) {
      return false;
    }
  }

  return true;
}

void main() {
  int num = 11;
  if (isPrime(num)) {
    print('$num é um número primo.');
  } else {
    print('$num não é um número primo.');
  }
}

// Soma dos números
int sumOfDigits(int number) {
  // Converte o número em uma string para facilitar a iteração sobre os dígitos
  String numberString = number.toString();
  
  // Inicializa a variável para a soma dos dígitos
  int sum = 0;

  // Itera sobre cada caractere na string do número
  for (int i = 0; i < numberString.length; i++) {
    // Converte cada caractere de volta para um inteiro e soma
    sum += int.parse(numberString[i]);
  }
  
  return sum;
}

//void main() {
//  int num = 1997;
//  int result = sumOfDigits(num);
//  print('A soma dos dígitos de $num é $result.');
//}
