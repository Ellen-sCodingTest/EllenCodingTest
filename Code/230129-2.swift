/*
 다양한 수로 이루어진 배열이 있을 때 주어진 수들을 M번 더하여 가장 큰 수를 만드시오.
 단 배열의 특정한 인덱스에 해당하는 수가 연속해서 K번을 초과하여 더해질 수 없어야한다.
 
 [입력조건]
 첫째 줄에 N(2 ≤ N ≤ 1,000), M(1 ≤ M ≤ 10,000), K(1 ≤ K ≤ 10,000)의 자연수가 주어지며 각 자연수는 공백으로 구분한다.
 둘째 줄에 N개의 자연수가 주어진다. 각 자연수는 공백으로 구분한다. 단, 각각의 자연수는 1 이상 10,000 이하의 수로 주어진다.
 입력으로 주어지는 K는 항상 M보다 작거나 같다.
 
 [출력조건]
 첫째 줄에 큰 수의 법칙에 따라 더해진 답을 출력한다.
*/

let firstInput = readLine()
let secondInput = readLine()
var firstNumbers: [Int] = []
var secondNumbers: [Int] = []

if let firstInput: String {
    let array = firstInput.split(separator: " ")
    firstNumbers = array.map { text in
        return Int(text) ?? 0
    }
}

if let secondInput: String {
    let array = secondInput.split(separator: " ")
    secondNumbers = array.map { text in
        return Int(text) ?? 0
    }
}

let numberN: Int = firstNumbers[0]
let numberM: Int = firstNumbers[1]
let numberK: Int = firstNumbers[2]

secondNumbers.sort(by: <)

let firstNumber = secondNumbers[numberN - 1]
let secondNumber = secondNumbers[numberN - 2]

var countNumber = numberM / (numberK + 1) * numberK
countNumber += numberM % (numberK + 1)

var result = 0
result += countNumber * firstNumber
result += (numberM - countNumber) * secondNumber

print(result)
