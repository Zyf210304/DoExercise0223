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

/*##########################  第9题 ##########################

 输入一个 int 型整数，按照从右向左的阅读顺序，返回一个不含重复数字的新的整数。
 保证输入的整数最后一位不是 0 。
 
 输入：9876673
 输出：37689
*/

//var array:[Int] = []
//while let line = readLine() {
//    line.reversed().forEach { char in
//        let Str = String(char)
//        if !array.contains(Int(Str) ?? 0) {
//            array.append(Int(Str) ?? 0)
//        }
//
//    }
//    var arr = array.flatMap{String($0)}
//    print(String(arr))
//}

/*##########################  第10题 ##########################

 编写一个函数，计算字符串中含有的不同字符的个数。字符在 ASCII 码范围内( 0~127 ，包括 0 和 127 )，换行表示结束符，不算在字符里。不在范围内的不作统计。多个相同的字符只计算一次
 
 输入：abc
 输出：3
*/

//var array: [Character] = []
//while let line = readLine() {
//    array = []
//    line.forEach { char in
//        array.append(char)
//    }
//    print(Set(array).count)
//}

/*##########################  第11题 ##########################

 输入一个整数，将这个整数以字符串的形式逆序输出
 程序不考虑负数的情况，若数字含有0，则逆序形式也含有0，如输入为100，则输出为001
 
 输入： 1516000
 输出： 0006151
*/

//while let line = readLine() {
//    line.reversed().forEach { char in
//        print(char, terminator: "")
//    }
//}

/*##########################  第12题 ##########################

 接受一个只包含小写字母的字符串，然后输出该字符串反转后的字符串。（字符串长度不超过1000）
 
 输入： adad
 输出： dada
*/

//while let line = readLine() {
//    line.reversed().forEach { char in
//        print(char, terminator: "")
//    }
//}

/*##########################  第13题 ##########################

 将一个英文语句以单词为单位逆序排放。例如“I am a boy”，逆序排放后为“boy a am I”
 所有单词之间用一个空格隔开，语句中除了英文字母外，不再包含其他字符
 
 输入： I am a boy
 输出： boy a am I
*/

//while let line = readLine() {
//    var array = line.split(separator: " ")
//    array.reversed().forEach { str in
//        print(str, terminator: " ")
//    }
//}

/*##########################  第14题 ##########################

 给定 n 个字符串，请对 n 个字符串按照字典序排列。
 
 输入：9
 cap
 to
 cat
 card
 two
 too
 up
 boat
 boot
 输出：boat
 boot
 cap
 card
 cat
 to
 too
 two
 up
*/


//while let line = readLine() {
//    var array: [String] = []
//    let count = Int(line)!
//    for _ in 0..<count {
//        let rowStr = readLine()
//        array.append(rowStr!)
//    }
//    print(array.sorted().joined(separator: "\n"))
//}

/*##########################  第题 ##########################

 输入一个 int 型的正整数，计算出该 int 型数据在内存中存储时 1 的个数。
 
 输入：5
 输出：2
*/

//while let line = readLine() {
//    var number = Int(line)!
//    var count = 0
//    while number > 0 {
//        if number % 2 != 0 {
//            count += 1
//        }
//        number = number / 2
//    }
//    print(count)
//}

/*##########################  第题 ##########################

 输入一个 int 型的正整数, 输入整数的反转。
 
 输入：1234
 输出：4321
*/

//while let line = readLine() {
//    var number = Int(line)!
//    var count = 0
//    while number != 0 {
//        var lastNumber = number % 10
//        var newCount = count * 10 + lastNumber
//
//
//        if (newCount - lastNumber) / 10 != count {
//            print(0)
//        }
//
//        count = newCount
//
//        number /= 10
//    }
//    print(count)
//}

/*
 描述
 编写一个程序，将输入字符串中的字符按如下规则排序。

 规则 1 ：英文字母从 A 到 Z 排列，不区分大小写。
 如，输入： Type 输出： epTy
 规则 2 ：同一个英文字母的大小写同时存在时，按照输入顺序排列。
 如，输入： BabA 输出： aABb
 规则 3 ：非英文字母的其它字符保持原来的位置。
 如，输入： By?e 输出： Be?y
 数据范围：输入的字符串长度满足
 1≤𝑛≤1000
 
 */

//while let line = readLine() {
//    let with: String = line.filter {
//        ($0 >= "a" && $0 <= "z") || ($0 >= "A" && $0 <= "Z")
//    }
//    let sortWith:[String.Element] = with.sorted {
//        $0.lowercased() < $1.lowercased()
//    }
//
//    var reslut = ""
//    var indexR = 0
//
//    for char in line {
//        if (char >= "a" && char <= "z") || (char >= "A" && char <= "Z") {
//             reslut = "\(reslut)\(sortWith[indexR])"
//            indexR += 1
//        } else {
//            reslut = "\(reslut)\(char)"
//        }
//    }
//
//    print(reslut)
//}

/*
 描述
 开发一个坐标计算工具， A表示向左移动，D表示向右移动，W表示向上移动，S表示向下移动。从（0,0）点开始移动，从输入字符串里面读取一些坐标，并将最终输入结果输出到输出文件里面。

 输入：

 合法坐标为A(或者D或者W或者S) + 数字（两位以内）

 坐标之间以;分隔。

 非法坐标点需要进行丢弃。如AA10;  A1A;  $%$;  YAD; 等。

 下面是一个简单的例子 如：

 A10;S20;W10;D30;X;A1A;B10A11;;A10;

 处理过程：

 起点（0,0）

 +   A10   =  （-10,0）

 +   S20   =  (-10,-20)

 +   W10  =  (-10,-10)

 +   D30  =  (20,-10)

 +   x    =  无效

 +   A1A   =  无效

 +   B10A11   =  无效

 +  一个空 不影响

 +   A10  =  (10,-10)

 结果 （10， -10）

 输入描述：
 一行字符串

 输出描述：
 最终坐标，以逗号分隔

 示例1
 输入：
 A10;S20;W10;D30;X;A1A;B10A11;;A10;
 复制
 输出：
 10,-10
 复制
 示例2
 输入：
 ABC;AKL;DA1;
 复制
 输出：
 0,0
 
 */

//
//while let line = readLine() {
//    var point = Array(repeating: 0, count: 2)
////    let array = line.split(separator: ";")
//    let array = line.components(separatedBy: ";")
//    for str in array {
//        if checkData(str) {
//            var item = str
//            let direct = item.first!
//            let direction = moveDirection(rawValue: String(direct))
//            item.removeFirst()
//            let value = Int(String(item))!
////            print(value, direction)
//            switch direction {
//            case .W:
//                point[1] += value
//            case .S:
//                point[1] -= value
//            case .A:
//                point[0] -= value
//            case .D:
//                point[0] += value
//            case .none:
//                break
//            }
//        }
//    }
//    print("\(point[0]),\(point[1])")
//}
//
//public enum moveDirection: String {
//    case W
//    case A
//    case S
//    case D
//}
//
//func checkData(_ str:String) -> Bool {
//    var item = str
//    if str.hasPrefix("A") || str.hasPrefix("W") || str.hasPrefix("S") || str.hasPrefix("D") {
//        item.removeFirst()
//        let list = Array(item)
//        if list.count == 0 || list.count > 2 {
//           return false
//        }
//        for char in list {
//            if char > "9" || char < "0" {
//                return false
//            }
//        }
//        return true
//    }
//
//    return false
//}

/*
 密码要求:

 1.长度超过8位

 2.包括大小写字母.数字.其它符号,以上四种至少三种

 3.不能有长度大于2的包含公共元素的子串重复 （注：其他符号不含空格或换行）

 数据范围：输入的字符串长度满足
 1≤n≤100
 输入描述：
 一组字符串。

 输出描述：
 如果符合要求输出：OK，否则输出NG
 输入
 021Abc9000
 021Abc9Abc1
 021ABC9000
 021$bc9000
 输出
 
 OK
 NG
 NG
 OK

 */

//func isPasswordValid(_ password: String) -> Bool {
//    guard password.count > 8 else {return false}
//
//    var containsLowercase = false
//    var containsUppercase = false
//    var containsDigit = false
//    var containsSymbol = false
//
//    for char in password {
//        if char.isLowercase { containsLowercase = true }
//        else if char.isUppercase { containsUppercase = true }
//        else if char.isNumber { containsDigit = true}
//        else {containsSymbol = true}
//    }
//
//    let totalCount = [containsLowercase, containsUppercase, containsDigit, containsSymbol].filter { $0 }.count
//    if totalCount < 3 {return false}
//    for i in 0..<password.count - 2 {
//        let substring = password[password.index(password.startIndex, offsetBy: i)..<password.index(password.startIndex, offsetBy: i + 3)]
//        if password[password.index(password.startIndex, offsetBy: i + 1)...].contains(substring) {
//            return false
//        }
//    }
//    return true
//}
//
//while let password = readLine() {
//    print(isPasswordValid(password) ? "OK" : "NG")
//}


/*
 描述
 现在有一种密码变换算法。
 九键手机键盘上的数字与字母的对应： 1--1， abc--2, def--3, ghi--4, jkl--5, mno--6, pqrs--7, tuv--8 wxyz--9, 0--0，把密码中出现的小写字母都变成九键键盘对应的数字，如：a 变成 2，x 变成 9.
 而密码中出现的大写字母则变成小写之后往后移一位，如：X ，先变成小写，再往后移一位，变成了 y ，例外：Z 往后移是 a 。
 数字和其它的符号都不做变换。
 数据范围： 输入的字符串长度满足
 1
 ≤
 𝑛
 ≤
 100
  
 1≤n≤100
 输入描述：
 输入一组密码，长度不超过100个字符。

 输出描述：
 输出密码变换后的字符串

输出 YUANzhi1987
 
输出 zvbo9441987
 */

//while let line = readLine() {
//    var mapIn = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz123456789"
//    var mapOut = "bcdefghijklmnopqrstuvwxyza22233344455566677778889999123456789"
//
//    for char in line {
////        if (char >= "a" && char <= "z") || (char >= "A" && char <= "Z") {
//            let index = mapIn.firstIndex(of: char)
//            print(mapOut[index!], terminator: "")
////        } else  {
////            print(char,  terminator: "")
////        }
//
//    }
//}


/*
 描述
 实现删除字符串中出现次数最少的字符，若出现次数最少的字符有多个，则把出现次数最少的字符都删除。输出删除这些单词后的字符串，字符串中其它字符保持原来的顺序。

 数据范围：输入的字符串长度满足
 1
 ≤
 𝑛
 ≤
 20
  
 1≤n≤20  ，保证输入的字符串中仅出现小写字母
 输入描述：
 字符串只包含小写英文字母, 不考虑非法输入，输入的字符串长度小于等于20个字节。

 输出描述：
 删除字符串中出现次数最少的字符后的字符串。
 
 输入
 aabcddd
 输出
 aaddd
 */

//while let line = readLine() {
//
//    var charCount: [Character:Int] = [:]
//    
//    for char in line {
//         if charCount.keys.contains(char) {
//             charCount[char]! += 1
//         } else {
//             charCount[char] = 1
//         }
//     }
//    
//    let min = charCount.values.min()
//    
//    for (key, value) in charCount {
//        if value == min {
//            charCount.removeValue(forKey: key)
//        }
//    }
//
//    var result = line.filter({ charCount.keys.contains($0) })
//    
//    print(result)
//    
//
//}

/*
 描述
 N 位同学站成一排，音乐老师要请最少的同学出列，使得剩下的 K 位同学排成合唱队形。

 设K位同学从左到右依次编号为 1，2…，K ，他们的身高分别为
 𝑇1,𝑇2,…,𝑇𝐾，若存在 i(1≤i≤K) 使得𝑇1<𝑇2<.....<𝑇𝑖−1<𝑇𝑖T 且Ti>Ti+1>......>TK
 ​，则称这K名同学排成了合唱队形。
 通俗来说，能找到一个同学，他的两边的同学身高都依次严格降低的队形就是合唱队形。
 例子：
 123 124 125 123 121 是一个合唱队形
 123 123 124 122不是合唱队形，因为前两名同学身高相等，不符合要求
 123 122 121 122不是合唱队形，因为找不到一个同学，他的两侧同学身高递减。

 你的任务是，已知所有N位同学的身高，计算最少需要几位同学出列，可以使得剩下的同学排成合唱队形。

 注意：不允许改变队列元素的先后顺序 且 不要求最高同学左右人数必须相等
 
 数据范围：
 1≤n≤3000
 
 输入描述：
 用例两行数据，第一行是同学的总数 N ，第二行是 N 位同学的身高，以空格隔开

 输出描述：
 最少需要几位同学出列
 
 输入：
 8
 186 186 150 200 160 130 197 200
 
 输出：
 4

 说明：
 由于不允许改变队列元素的先后顺序，所以最终剩下的队列应该为186 200 160 130或150 200 160 130
 
 */

//var num = Int(readLine()!)
//var num = 8
//let str = "186 186 150 200 160 130 197 200"
////    let list = readLine()!.components(separatedBy: " ").map{Int($0)}
//let list = str.components(separatedBy: " ").map{Int($0)}
//    var arr = [Int]()
//    for item in list {
//        arr.append(item!)
//    }
//    var arrL = Array(repeating: 0, count: num)
//    var arrR = Array(repeating: 0, count: num)
//
//    for i in 0..<num {
//        for j in 0..<i {
//            if arr[i] > arr[j] {
//                arrL[i] = max(arrL[j] + 1, arrL[i])
//                print("\n", j ,i)
//                print(arr, arrL, separator: "\n")
//            }
//        }
//    }
//
//    for i in stride(from: num - 1, to: 0, by: -1){
//        for j in stride(from: num - 1, to: i, by: -1) {
//            if arr[i] > arr[j] {
//                arrR[i] = max(arrR[j] + 1, arrR[i])
//            }
//        }
//    }
//
//    var maxValue = 0
//    for i in 0..<num {
//        maxValue = max(maxValue, arrL[i] + arrR[i] + 1)
//    }
//
////    print(arr, arrL, arrR, separator: "\n")
//    print(num - maxValue)


/*
 描述
 定义一个单词的“兄弟单词”为：交换该单词字母顺序（注：可以交换任意次），而不添加、删除、修改原有的字母就能生成的单词。
 兄弟单词要求和原来的单词不同。例如： ab 和 ba 是兄弟单词。 ab 和 ab 则不是兄弟单词。
 现在给定你 n 个单词，另外再给你一个单词 x ，让你寻找 x 的兄弟单词里，按字典序排列后的第 k 个单词是什么？
 注意：字典中可能有重复单词。

 数据范围： 1≤n≤1000 ，输入的字符串长度满足 1≤len(str)≤1  1≤k<n
 输入描述：
 输入只有一行。 先输入字典中单词的个数n，再输入n个单词作为字典单词。 然后输入一个单词x 最后后输入一个整数k
 输出描述：
 第一行输出查找到x的兄弟单词的个数m 第二行输出查找到的按照字典顺序排序后的第k个兄弟单词，没有符合第k个的话则不用输出。
 
 输入
 3 abc bca cab abc 1
输出
 2
 bca

 输入
 6 cab ad abcd cba abc bca abc 1
 输出
 3
 bca
 */

//func checkStr(_ x: String, _ borStr: String) -> Bool {
//    if x == borStr || x.count != borStr.count{
//        return false
//    }
//
//    let currentArr = Array(x)
//    let borArr = Array(borStr)
//
//    if currentArr.sorted() == borArr.sorted() {
//        return  true
//    }
//
//    return false
//}
//
//while let line = readLine() {
//    let list = line.components(separatedBy: " ")
//    let n = Int(list[0])
//    let x = list[list.count - 2]
//    let k = Int(list.last!)!
//
//    var broArr = [String]()
//
//    for str in list[1...list.count - 3] {
//        if checkStr(x, str) {
//            broArr.append(str)
//        }
//    }
//    print(broArr.count)
//    if(broArr.count >= k) {
//        print(broArr.sorted()[k - 1])
//    }
//}

/*
 描述
 对输入的字符串进行加解密，并输出。

 加密方法为：

 当内容是英文字母时则用该英文字母的后一个字母替换，同时字母变换大小写,如字母a时则替换为B；字母Z时则替换为a；

 当内容是数字时则把该数字加1，如0替换1，1替换2，9替换0；

 其他字符不做变化。

 解密方法为加密的逆过程。
 数据范围：输入的两个字符串长度满足
 1
 ≤
 𝑛
 ≤
 1000
  
 1≤n≤1000  ，保证输入的字符串都是只由大小写字母或者数字组成
 输入描述：
 第一行输入一串要加密的密码
 第二行输入一串加过密的密码

 输出描述：
 第一行输出加密后的字符
 第二行输出解密后的字符
 */


//    var mapIn = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
//    var mapOut = "bcdefghijklmnopqrstuvwxyzaBCDEFGHIJKLMNOPQRSTUVWXYZA1234567890"
//
//    let line1 = readLine()!
//    let line2 = readLine()!
//
//    for char in line1 {
//        let index = mapIn.firstIndex(of: char)
//        print(mapOut[index!], terminator: "")
//    }
//    print()
//    for char in line2 {
//        let index = mapOut.firstIndex(of: char)
//        print(mapIn[index!], terminator: "")
//    }
//    print()

/*
 描述
 对字符串中的所有单词进行倒排。

 说明：

 1、构成单词的字符只有26个大写或小写英文字母；

 2、非构成单词的字符均视为单词间隔符；

 3、要求倒排后的单词间隔符以一个空格表示；如果原字符串中相邻单词间有多个间隔符时，倒排转换后也只允许出现一个空格间隔符；

 4、每个单词最长20个字母；

 数据范围：字符串长度满足
 1≤n≤10000
 输入描述：
 输入一行，表示用来倒排的句子

 输出描述：
 输出句子的倒排结果

 输入 I am a student
 输出 student a am I
 
 输入 $bo*y gi!r#l
输出 l r gi y bo

 */


//let line = readLine()
//let regux = try NSRegularExpression(pattern: "[^a-zA-Z]")
//let res = regux.stringByReplacingMatches(in: line!, range: NSMakeRange(0, line!.count), withTemplate: " ")
//let array = res.split(separator: " ")
//for i in (0..<array.count).reversed() {
//    print(array[i], terminator: " ")
//}



//while let line = readLine() {
//    var number = Int(line)!
//    var count = 0
//    while number != 0 {
//        var lastNumber = number % 10
//        var newCount = count * 10 + lastNumber
//        if (newCount - lastNumber) / 10 != count {
//            print(0)
//        }
//        count = newCount
//        number /= 10
//    }
//    print(count)
//}

//描述
//原理：ip地址的每段可以看成是一个0-255的整数，把每段拆分成一个二进制形式组合起来，然后把这个二进制数转变成
//一个长整数。
//举例：一个ip地址为10.0.3.193
//每段数字             相对应的二进制数
//10                   00001010
//0                    00000000
//3                    00000011
//193                  11000001
//
//组合起来即为：00001010 00000000 00000011 11000001,转换为10进制数就是：167773121，即该IP地址转换后的数字就是它了。
//
//数据范围：保证输入的是合法的 IP 序列
//
//输入描述：
//输入
//1 输入IP地址
//2 输入10进制型的IP地址
//
//输出描述：
//输出
//1 输出转换成10进制的IP地址
//2 输出转换后的IP地址

//while let line = readLine() {
//    if line.contains("."){
//        let parts = line.split(separator: ".").compactMap{ UInt8($0)}
//        var binaryValue = ""
//        for part in parts {
//            //每段ip转换成二进制
//            let binaryPart = String(part, radix: 2)
//            //为了保持每个段8位对其 补齐零
//            binaryValue += String(repeating: "0", count: 8 - binaryPart.count) + binaryPart
//        }
//        
//        if let decimalValue = UInt32(binaryValue, radix: 2) {
//            print(decimalValue)
//        }
//    } else {
//        if let decimal  = UInt32(line) {
//
//            var ipParts = [String]()
//            for i in stride(from: 24, through: 0, by: -8) {
//                let byte = (decimal >> i) & 0xFF
//                ipParts.append(String(byte))
//            }
//            print(ipParts.map{$0}.joined(separator: "."))
//        }
//            
//    }
//}

/*
 密码截取
 https://www.nowcoder.com/practice/3cd4621963e8454594f00199f4536bb1?tpId=37&tqId=21255&rp=1&sourceUrl=%2Fexam%2Foj%2Fta%3FtpId%3D37&difficulty=undefined&judgeStatus=undefined&tags=&title=
 */
//if let line = readLine() {
//    var arr = [Character]()
//    for s in line {
//        arr.append(s)
//    }
//    var res = 0
//    for i in 0..<arr.count {
//        let len1 = maxlong(arr, i, i)
//        let len2 = maxlong(arr, i, i + 1)
//        let len = max(len1, len2)
//        res = max(len, res)
//    }
//    print(res)
//}
//
//func maxlong(_ s: [Character], _ l: Int, _ r: Int) -> Int {
//    var left = l
//    var right = r
//    while left >= 0 && right < s.count && s[left] == s[right] {
//        left -= 1
//        right += 1
//    }
//    return right - left - 1
//}


/*
图片整理
 https://www.nowcoder.com/practice/2de4127fda5e46858aa85d254af43941?tpId=37&tqId=21257&rp=1&sourceUrl=%2Fexam%2Foj%2Fta%3FtpId%3D37&difficulty=undefined&judgeStatus=undefined&tags=&title=
 */
//while let line = readLine() {
//    let strArr = line.sorted()
//    for item in strArr {
//        print(item, terminator: "")
//    }
//}

/*
字符串加密
 https://www.nowcoder.com/practice/e4af1fe682b54459b2a211df91a91cf3?tpId=37&tqId=21259&rp=1&sourceUrl=%2Fexam%2Foj%2Fta%3FtpId%3D37&difficulty=undefined&judgeStatus=undefined&tags=&title=
 */

//while let key = readLine(), let word = readLine() {
//    let normal = "abcdefghijklmnopqrstuvwxyz"
//    var indexs = [String.Index]()
//    for char in word {
//        indexs.append(normal.firstIndex(of: char)!)
//    }
//    var newWord = ""
//    for char in key {
//        if !newWord.contains(char) {
//            newWord.append(char)
//        }
//    }
//    for char in normal {
//        if !newWord.contains(char) {
//            newWord.append(char)
//        }
//    }
//    
//    var reslut = ""
//    for idx in indexs {
//        reslut.append(newWord[idx])
//    }
//    print(reslut,terminator: "\n")
//}

/*
统计每个月兔子总数
 https://www.nowcoder.com/practice/1221ec77125d4370833fd3ad5ba72395?tpId=37&tqId=21260&rp=1&sourceUrl=%2Fexam%2Foj%2Fta%3FtpId%3D37&difficulty=undefined&judgeStatus=undefined&tags=&title=
 */

func solution(_ mouth: Int) -> Int {
    var oneMonth = 1
    var twoMonth = 0
    var threeMonth = 0
    var addValue = 0
    for i in 2...mouth {
        threeMonth += twoMonth
        twoMonth = oneMonth
        oneMonth = addValue
        addValue = twoMonth + threeMonth
    }
    return oneMonth + twoMonth + threeMonth
}

while let line = readLine() {
    print(solution(Int(line)!))
}
