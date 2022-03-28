import UIKit


let outlinesModel = [1,2,3,4,2,3,2]

outlinesModel.map( "$")

let moduleId = 2;
func scrollDidIndex(index: Int, lastIndex: Int) -> Void {
    print(index)
    print(lastIndex)
}
let _ = outlinesModel.filter { $0 == moduleId }.map { e in
    scrollDidIndex(index: outlinesModel.firstIndex(of: e)!, lastIndex: 1)
}


let streets = ["Adams", "Evarts", "Bryant", "Channing", "Douglas", "Evarts"]

let inde = streets.firstIndex(of: "Evarts")




var greeting = "Hello, playground"
print(greeting)

//for i in 1...3 {
//    print("\(i) ", terminator: "")
//}
// MARK: MINI MAP show
// TODO: 呆坐
// FIXME: 修复


// 可选
var o: Int? = nil;
let i = o ?? 0

// 闭包

let a1 = [1,3,2].sorted(by: {(l: Int, r: Int) -> Bool in
                         return l < r
})


// 尾闭包
let a2 = [1,3,2].sorted { (l: Int, r: Int) -> Bool in
    return l < r
}

func f1(p: String = "p") -> String {
    return "p is \(p)"
}
print(f1(p: "ff"))
func f2(fn: (String) -> String, p: String) -> String {
    return fn(p)
}

print(f2(fn: f1, p: "d"))


print(0x9p1);


var b = false
b.toggle()
b.toggle()
print(b)

//let num: Int32 = 0xFEDCBA98 << 32
//let num: Int32 = 0xFEDCBA98 >> 36



