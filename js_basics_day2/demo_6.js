// DEFAULT ARGUMENT FUNCTION 

function greet(name = "Guest") {
    return `Hello, ${name}!`;
}       

console.log(greet()); // Output: Hello, Guest!
console.log(greet("Alice")); // Output: Hello, Alice!

