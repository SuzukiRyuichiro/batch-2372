const firstName = "Adrian";
const message = `Hello ${firstName}`;

const student = {
  firstName: "John",
  lastName: "Doe",
  age: 25,
  address: {
    street: "Pennsylvania Av",
    number: 1000,
  },
};

console.log(student.firstName);
console.log(student.address.street);

// if statements

const age = 18;

if (age >= 18) {
  console.log("You can vote!");
} else if (age < 10) {
  console.log("You are too young! Go back to school!");
} else {
  console.log("You are still bit too young. Wait a couple more years!");
}

// function

const add = (param1, param2) => {
  return param1 + param2;
};

console.log(add(1, 2));
