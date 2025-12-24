// FUNTION ALIAS
 
function add(n1, n2) {
    console.log(`Addition is = ${n1 + n2}`); 
}

const myadd = add; // function aliasing

myadd(10, 20); // calling the function using alias
add(30, 40); // calling the original function
console.log(`myadd = ${typeof myadd}`);
console.log(`myadd =  ${myadd}`);