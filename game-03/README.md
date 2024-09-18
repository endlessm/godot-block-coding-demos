# Platformer demo

## About

This is a platformer game. The goal is to stay in the level, keep alive.
When the player collects enough coins and reaches the flag, then wins
the game.

## Implementation

The world is built with tilemap style.

The player is implemented with SimpleCharacter node. So, using W, A, D to jump
and move left & right.

Check the player is on floor and velocity to play walk, or jump animation in the
AnimationPlayer.

The collected coins and the player's lives are implemented with SimpleScoring
nodes.

The player enters a coin to collect the coin. It increases coins' score and
vanish the coin. When the player collects enough coins and enters the flag's
area, shows "You Win!" label.

The enemies walk back and forth by setting the enemy's terminal positions within
AnimationPlayer's "move" animation and playing it automatically.

The player has a HitArea at the foot. If any enemy enters into the HitArea, the
enemy's vanish_enemy method will be invoked to vanish the enemy.

The enemies define their HitArea, too. If the player enters into the HitArea,
nodes in HUD group will invoke their own decrease_a_life method to decrease one
life.

When the player enters an enemy's HitArea or drops down into the Dangerzone, the
lives' score decreases one. If there is no more life, shows "You Lose!" label.
