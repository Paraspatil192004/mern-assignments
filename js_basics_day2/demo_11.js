function add(n1, n2) {
    return n1+n2
}

function sub(n1, n2) {
    return n1-n2
}

function multi(n1, n2) {
    return n1*n2
}

function div(n1, n2) {
    return n1/n2
}

const res1 = add(19, 8)
console.log(`Addition - ${res1}`)

const res2 = sub(19, 8)
console.log(`Substraction - ${res2}`)

const res3 = multi(19, 8)
console.log(`Multiplication - ${res3}`)

const res4 = div(19, 8)
console.log(`Division - ${res4}`)


// to avoid this multiple time writing same code, we can write the higher order function that reduce this code.
