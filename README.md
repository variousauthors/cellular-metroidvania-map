cellular-metroidvania-map
=========================

Using a cellular automata and some graphs to generate a world for a metroidvania.

This started as a branch from cellular-roguelike-map. I got fed up with trying to tweak the
CA to behave like one big unified dungeon, and made a branch to try and generate nice metroid
levels.

The idea was to mark the tiles of the map where a player could stand, and then connect them
into graphs. Then, each of these graphs is connected to other graphs by directed edges based
on whether they can be reached from one another by jumping.

In the end I would also like to be able to automatically place enemies, powerups, and samus's
spaceship using the graph generated from the earlier steps. Yup!
