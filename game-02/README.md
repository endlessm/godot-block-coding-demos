# Split-screen demo

## About

This is a top-down game for 2 players. The goal is to find each other in a large
maze. The main scene is showing the level in a split-screen implemented without
any programming.

## Implementation

The split-screen uses SubViewportContainer and Subviewport nodes with the level
scene instantiated in each one. The level instances are set to "editable
children" so a different camera can be attached to each one, using a
RemoteTrasnsform2D node. It is a bit hacky and the game is runnig twice, but it
does the job.

A little intro narrative was done with AnimationPlayer. This shows potential to
display dialogues when the player interacts with an object, for example.

Footprints that slowly dissapear were added as hint. Implemented with particles.

## Limitations found

The characters run the same animation in loop. Because we can't use the comparison block to check
if the velocity is zero (can't compare Vector2, only integers). Or if it's heading left to switch to
a "walk left" animation. So the assets were drawn to face the camera and have a bouncing animation
that works in all cases. Initially I wanted the characters to have legs and different "idle" and
"walk" animations.

The particles for footprints are always being emited. So I made them of a solid color and always
in the same place as workaround. Ideally there should be blocks for stopping / starting the emition
if the character is moving or not. This would also require Vector2 comparison for the velocity.
