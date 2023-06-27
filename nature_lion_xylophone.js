project

// Healing Waters

// Setup:
// Create variables for the healing water
let waterQuantity = 0; 
let waterCapacity = 1000;

// Create a function to produce a healing water when invoked
function produceHealingWater() {
    if (waterQuantity < waterCapacity) {
        waterQuantity++;
        console.log(`Produced a healing water. Current water quantity is ${waterQuantity}.`);
    } else {
        console.log(`Water capacity is ${waterCapacity}. Cannot produce more healing waters.`)
    }
}

// Create a function to consume a healing water when invoked
function consumeHealingWater() {
    if (waterQuantity > 0) {
        waterQuantity--;
        console.log(`Consumed a healing water. Current water quantity is ${waterQuantity}.`);
    } else {
        console.log(`No healing waters available. Please produce more.`)
    }
}

// Create a function to report the current water quantity
function reportWaterQuantity() {
    console.log(`Current water quantity is ${waterQuantity}.`);
}

// Create a function to increase the water capacity
function increaseWaterCapacity(newCapacity) {
    waterCapacity += newCapacity;
    console.log(`Increased the water capacity to ${waterCapacity}.`);
}

// Create a function to reduce the water capacity
function reduceWaterCapacity(newCapacity) {
    if (newCapacity < waterCapacity) {
        waterCapacity -= newCapacity;
        console.log(`Reduced the water capacity to ${waterCapacity}.`);
    } else {
        console.log(`Cannot reduce the water capacity below 0.`)
    }
}

// Create a function to add healing waters
function addHealingWater(amount) {
    if (waterQuantity + amount <= waterCapacity) {
        waterQuantity += amount;
        console.log(`Added ${amount} healing waters. Current water quantity is ${waterQuantity}.`);
    } else {
        console.log(`Cannot add more than ${waterCapacity} healing waters.`);
    }
}

// Create a function to remove healing waters
function removeHealingWater(amount) {
    if (waterQuantity - amount >= 0) {
        waterQuantity -= amount;
        console.log(`Removed ${amount} healing waters. Current water quantity is ${waterQuantity}.`);
    } else {
        console.log(`Cannot remove more than ${waterQuantity} healing waters.`);
    }
}

// Create a function to check if the healing water is available
function checkHealingWaters() {
    if (waterQuantity > 0) {
        console.log(`Healing waters are available.`);
    } else {
        console.log(`No healing waters available.`);
    }
}