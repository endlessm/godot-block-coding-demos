# Spaceship demo

## About

This is a top-down game featuring the "move like a spaceship" block in
the SimpleCharacter node. It is a more complete game based on the
knowledge gained in the previous demos.

## Implementation

The inventory was done with boolean variables in the block
coding. There are "has_blue_key" and a "has_blaster" in the block
canvas for the ship.

A couple mechanics have been implemented with basic collision
detection of Area2D "on body entered/exited". For instance:
- Camera zoom in and out when the player ship enter/leaves a specific
  zone.
- Open door when the player ship gets near the door and has a key.
- Change a flag like "has_blue_key" when the player ship grabs the
  blue key. Play an animation in that case too.
- Present messages on screen.

I was able to push the asteroids with the blasters by adding
AnimatableBody2D nodes to them and then animating them.

Aesthetics: Sprites with CanvasTextures (diffuse and normal map) are
used to give a 3D look, while still being 2D. Adding PointLight2D and
LightOccluder2D nodes complete the effect. Also a CanvasModulate node
is used in the main scene to darken the level.

## Limitations found

There is no current way of spawning objects. That's why the blasters
are implemented as an animation and they are fixed to the player
ship. Rotating the ship rotates the blasters which is not what I
wanted.

I wanted asteroids to have health and destroy with an animation, but
the only option today is to use the "queue free" block on them. We
need to fix the "call method in node" block to reference a node in a
instantiated scene like this.
