// FUNCTION IN JAVA-SCRIPT

function f1() {
    console.log("parameterless function");
}

f1()

function f2(n1,n2) {
    console.log("function with parameters")
    console.log(`n1 - ${n1} , typeof(n1) - ${typeof (n1)}`)
    console.log(`n2 - ${n2} , typeof(n2) - ${typeof (n2)}`)
}

f2(8,19)
f2("hello",true)
f2()
f2(8)
f2(null,'mern stack')