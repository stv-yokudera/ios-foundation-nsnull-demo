//: Playground - noun: a place where people can play

import UIKit

/*
 NSNullは、nilを許容しないcollectionオブジェクト内で
 null値を表現するのに使用されるシングルトンオブジェクト
 */
let array: NSArray = [NSNull(), NSNull(), NSNull()]
print(array)

let dictionary: NSDictionary = ["key1": NSNull(),
                                "key2": NSNull(),
                                "key3": NSNull()]
print(dictionary)

/*
 ＜補足：Optional＞
 Optional<Wrapped>型はWrapped型の値の存在と不在を表す
 列挙型として下記のように定義されている
 
 enum Optional<Wrapped> {
     case none
     case some(Wrapped)
 }
 */

/*
 SwiftのnilはOptional<Wrapped>型の.noneを表すリテラル
 */
let none = Optional<Int>.none
print(".none: \(none)")

/*
 型推論
 */

// .someは型推論可能
let some = Optional.some(1)
print(".some: \(some)")

// .noneは<Wrapped>省略不可 推論のもととなる値が存在しないため
// Wrapped? は Optional<Wrapped>の糖衣構文
let intNone: Int? = Optional.none
print("intNone: \(intNone)")

/*
 Optional<Wrapped>型の値の生成
 */
var a: Int?

a = nil
print("nilリテラルの代入による.noneの生成: \(a)")

a = Optional(1)
print("イニシャライザによる.someの生成: \(a)")

a = 2
print("値の代入による.someの生成: \(a)")
