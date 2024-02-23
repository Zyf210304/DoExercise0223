//
//  main.swift
//  DoExercise0223
//
//  Created by 张亚飞 on 2024/2/23.
//

import Foundation
/*##########################  第题 ##########################

 
 
 输入：
 输出：
*/

/*##########################  第1题 ##########################

 计算字符串最后一个单词的长度，单词以空格隔开，字符串长度小于5000。（注：字符串末尾不以空格为结尾）
 
 输入： hello nowcoder
 输出： 8
*/

//while let line = readLine(){
//    let parts = line.split(separator: " ")
//    print(parts.last?.count ?? 0)
//}


/* ##########################  第2题 ##########################
 写出一个程序，接受一个由字母、数字和空格组成的字符串，和一个字符，然后输出输入字符串中该字符的出现次数。（不区分大小写字母）
 
 输入：ABCabc
      A
 输出：2
 */

//while let line = readLine(), let c = readLine() {
//    let string = String(line).lowercased()
//    let char = Character(c.lowercased())
//
//    var count = 0
//    string.forEach {
//        if $0 == char {
//            count += 1
//        }
//    }
//    print(count)
//}

/* ##########################  第3题 ##########################
 明明生成了N个1到500之间的随机整数。请你删去其中重复的数字，即相同的数字只保留一个，把其余相同的数去掉，然后再把这些数从小到大排序，按照排好的顺序输出。
 
 输入：3
 2
 2
 1
 输出：
 1
 2
 */

//解法一  直接利用set去重
//var list = [Int]()
//
//while let line = readLine() {
//    guard let number = Int(line) else {
//        break
//    }
//    list.append(number)
//}
//list.removeFirst()
//
//let sets = Set(list)
//let sorted = Array(sets).sorted()
//sorted.forEach {
//    print($0)
//}

//解法二 排序后去掉与前面相同的元素
//var list = [Int]()
//
//while let line = readLine() {
//    guard let number = Int(line) else {
//        break
//    }
//    list.append(number)
//}
//list.removeFirst()
//
//let sorted = list.sorted()
//print(sorted.first!)
//for index in 1 ..< sorted.count {
//    if sorted[index - 1] != sorted[index] {
//        print(sorted[index])
//    }
//}

/*##########################  第4题 ##########################

 •输入一个字符串，请按长度为8拆分每个输入字符串并进行输出；
 •长度不是8整数倍的字符串请在后面补数字0，空字符串不处理。
 
 输入：abc
 输出：abc00000
*/

//while let line = readLine() {
//    var string:String = line
//    if string.count % 8 != 0 {
//        string = string + "00000000"
//    }
//    while string.count >= 8 {
//        let s = string.prefix(8)
//        string = String(string.dropFirst(8))
//        print(s)
//    }
//}

/*##########################  第5题 ##########################

 写出一个程序，接受一个十六进制的数，输出该数值的十进制表示。
 
 输入：0xAA
 输出：170
*/

//let match = [ "0": 0, "1": 1, "2": 2, "3": 3, "4": 4, "5": 5, "6": 6, "7": 7, "8": 8, "9": 9, "a": 10, "b": 11, "c": 12, "d": 13, "e": 14, "f": 15 ]
//while let line = readLine() {
//    let str = line.dropFirst(2)
//    var count = 0
//    let result = str.reversed().reduce(0) { partialResult, value in
//        let key = value.lowercased()
//        count += 1
//        if let num = match[key] {
//            let square = Double(count - 1)
//            return Int(Double(partialResult) + Double(num) * pow(16, square))
//        }
//        return partialResult
//    }
//
//    print(result)
//}

/*##########################  第6题 ##########################

 功能:输入一个正整数，按照从小到大的顺序输出它的所有质因子（重复的也要列举）（如180的质因子为2 2 3 3 5 ）
 
 输入：180
 输出：2 2 3 3 5
*/

//while let line = readLine() {
//    var num = Int(line)!
//    var i = 2
//    while num != 1 && i * i <= num {
//        while num % i == 0 {
//            print(i, terminator: " ")
//            num = num / i
//        }
//        i += 1
//    }
//
//    if num != 1 {
//        print(num)
//    }
//}

/*##########################  第7题 ##########################

 写出一个程序，接受一个正浮点数值，输出该数值的近似整数值。如果小数点后数值大于等于 0.5 ,向上取整；小于 0.5 ，则向下取整。
 
 输入： 5.5
 输出： 6
*/

//while let line = readLine() {
//    let number = Double(line)! + 0.5
//    let resulet = Int(number)
//    print(resulet)
//}


/*##########################  第题 ##########################

 数据表记录包含表索引index和数值value（int范围的正整数），请对表索引相同的记录进行合并，即将相同索引的数值进行求和运算，输出按照index值升序进行输出。
 
 输入：4
 0 1
 0 2
 1 2
 3 4

 输出：0 3
 1 2
 3 4

*/

//var dic: [Int : Int] = [:]
//while let line = readLine() {
//    let count = Int(line)!
//    for _ in 0..<count {
//        let rowStr = readLine()
//        let rowResult = rowStr?.split(separator: " ")
//        
//        let rowKey = Int(rowResult?.first ?? "0")
//        let rowValue = Int(rowResult?.last ?? "0")
//        
//        let nowNumber = dic[rowKey!] ?? 0
//        dic[rowKey!] = nowNumber + rowValue!
//    }
//    
//    let keys = dic.keys.sorted()
//    keys.forEach { key in
//        print("\(key) \(dic[key] ?? 0)")
//    }
//}

