print("Hello, World!")

let skeleton = Enemy(health: 100, attackStrength: 10)

let skeleton2 = skeleton

skeleton.takeDamage(amount: 10)

print(skeleton2.health)
