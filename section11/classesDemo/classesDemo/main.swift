print("Hello, World!")

let skeleton = Enemy()
print(skeleton.health)
skeleton.move()
skeleton.attack()

let dragon = Dragon()
dragon.wingSpan = 5
dragon.attackStrength = 15
dragon.move()
dragon.attack()
dragon.talk(speech: "My claw, my teeth, my wings")
