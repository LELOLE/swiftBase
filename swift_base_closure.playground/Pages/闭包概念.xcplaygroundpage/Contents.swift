//: [Previous](@previous)
import UIKit
/// 闭包概念
var greeting = "Hello World!"


///闭包定义
///闭包是一个定义在其它函数（父函数）里面的函数，它拥有对父函数内变量的访问权。自身的作用域，父作用域和全局作用域。
///从定义可以看出，闭包的特点：
///
/// 1. 闭包是函数，它拥有函数的特点，比如 参数 和 返回值 等
/// 2. 作用域：父、自身、全局
///


/* 表达式
{(parameters) -> return type in
 statements
 return value
 }
 
 说明：参数列表是可选的。
      返回值是可选的 [return type 和 return value]
      参数类别和 返回值 类型 是根据上下文推断的
 */

var convertStrToInt: (Int) -> Int = {param in
    return param
}

var convertStrToInt2: (String) -> String = {param in
    return param
}
 


print(convertStrToInt2("12"))
print(convertStrToInt(12))



var convertIntToStr: (_ name: Int) -> String = {param in
    return String(param)
}

print(convertIntToStr(15))
print(convertIntToStr(16))
 
print(convertIntToStr(17))
//: [Next](@next)
