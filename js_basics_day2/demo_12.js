//HIGHER ORDER FUNCTION

function arithemeticExecuter(fn)           // ------------ arithmeticExecuter is higher order function
{
    const res = fn(19, 8)
    console.log(`Result - ${res}`); 
}

arithemeticExecuter((n1, n2) => n1+n2)
arithemeticExecuter((n1, n2) => n1-n2)
arithemeticExecuter((n1, n2) => n1*n2)
arithemeticExecuter((n1, n2) => n1/n2)     // ------------ done through lambda expression