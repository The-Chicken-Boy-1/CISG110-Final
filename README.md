# CISG110-Final
## Devlogs
### Week 12
The only technical issue that I had was that on my _on_kick_right_body_shape_entered function, I had error occuring. At first I thought that the error message was a spelling error. Though I didn't try to use print method to investigate the issue, I instead asked my professor and peers on discord about my issue. Luckily, one of my peers were able to help me out with the issue I was having on my code. The issue seemed to be that I didn't assigned the kickright node to the inspector on the player node in which my peer had the same issue. I fixed the issue by assigning the kickright node to the inspector on the player node and then I was able to finish the rest of my code from there. 

### Week 13
When I was working on getting the rat enemy to explode upon colliding with the player in Godot, I hit a frustrating roadblock where the collision code simply wouldn't run. To investigate, I first checked the Godot Output and Debugger consoles at the bottom of the screen, but they weren't showing any active red script errors, which left me scratching my head. I decided to insert a print("Collision detected!") statement right at the beginning of the _on_body_shape_entered function to see if the engine was even registering the impact. When nothing printed to the console during gameplay, I realized the issue wasn't with my body is Player logic, but rather that the collision event wasn't firing at all. Instead of waiting for office hours or sending a message to the professor, I posted a screenshot of my script and inspector settings in our class Discord server to see if anyone else had run into this. A classmate quickly replied and pointed out that because my rat is a RigidBody2D, it doesn't automatically track collisions to save on performance. The issue turned out to be that I hadn't enabled the physical reporting settings on the node itself. I fixed it by going into the Inspector panel for the Rat node, checking the box to turn on Contact Monitor, and changing the Max Contacts Reported value from 0 to 3. As soon as I restarted the scene, the physics engine finally started tracking the contacts, the signal fired perfectly, and the rat successfully exploded upon hitting the player.

### Week 14
Put your Week 14 Devlog answer here.

### Week 15
Put your Week 15 Devlog answer here.

## Open-Source Assets
- [Ninja cat sprites](https://opengameart.org/content/cat-fighter-sprite-sheet)
- [Item sprites](https://ipixl.itch.io/pixel-art-items-part-1)
- [Interior tilesets](https://rcpstd.itch.io/interior-tileset-asset-pack-16x16)
- [Rat Sprites](https://carysaurus.itch.io/rat-sprites)
