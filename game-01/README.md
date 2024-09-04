# Speed runner demo

## About

This is a side-scrolling game. The goal is to stay in the level and avoid
obstacles. When the player goes off screen the game ends.

## Implementation

Obstacles were done by animating AnimatableBody2D nodes from right to left. The
animation is selected randomly with blocks.

The Parallax2D node was used for the parallax backround and clouds passing by.
It doesn't require any programming. All is setup from the editor canvas and
inspector.

A little vibration for the plane was added at the last minute by using a "set
rotation" block with a random angle.

Particles and WorldEnvironment nodes were added for aesthetics.

An intro tutorial message and a "you lose" message were added with
AnimationPlayer.

## Limitations found

It would be nice to change the collision shape of SimpleCharacter, currently fixed to a 100x100
square if no texture is provided.
