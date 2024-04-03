# SGrave
Never lose your items again! The source code for the minecraft data pack "sgrave"

## Description
> **This data pack is in beta.**  
A lot of features and bug fixes has been planned for future.

> **Only works from Minecraft 1.20.2 to 1.20.4.**

Death in Minecraft is a big problem. In Minecraft, when you die, your items will just yeet out of your inventory. Some get lost in lava, some get lost by explosions, and some get lost in the void. Not to mention, your dropped items which did survive will just despawn after 5 minutes. So you just basically lose most of your items just by dying.

Using keep inventory won't work, because it literally removes the purpose of dying. You won't need to walk all the way back to your base. You only need to just kill yourself.

This data pack fixes this problem by making deaths more friendly, but not too much to not make it too overpowered. It stores all your items in a safe place called "grave" when you die. Well, there are a lot of mods and data packs that also do the same thing, but this data pack is designed to be more customizable.

With this data pack, you won't ever need to worry that you lost all of your items. The only hard part is to get back to where you died.

### Grave Spawning
<p>Your grave won't just spawn exactly where you died. There are a few conditions for a grave being made: 
<ul>
	<li> If you die in a block, the grave will keep being moved one block up until it reaches a transparent block (something like rails, air and vines).	</li>
	<li> If there is another grave, the grave will be moved one block up.	</li>
	<li> If you die floating in air or in water, the grave will keep being moved one block down until it reaches a transparent block where there is a solid block below. </li>
	<li> If you die below the void, the grave will attempt to spawn at y -63, following all the previous conditions. Basically, your grave will try to find the nearest transparent 	block where there is a solid block below. </li>
</ul>
Graves are invulnerable and the only way to destroy them is by opening the grave. They also have no hitbox, meaning you can easily walk through graves. Also, graves glow, so you can see them through walls. (Can be disabled in config) Currently, graves will never despawn, but they will be able to do so in the future.
</p></details>

After a grave spawns, The exact location of your grave will be announced to you. The announcement should look something like this:
<img src="https://i.postimg.cc/prrCPvp8/Screenshot-2024-03-31-2.png">  
Notice the _1_ in _Grave #1_. That is the grave ID, and it's important. It can be useful in a lot of scenarios.

## Opening a grave

When you reach the location of your grave, you will see your head lying on the ground, along with a text display showing your name and your grave's ID.

You can click on the grave to open he grave. All the items will be put in the exact same spot they were before you died, and you will collet 90% of the experience you've had before you died. (The percentage can be changed in the config.)  If an item can't be put in your inventory, it will instead be dropped.

You can also break a grave by sneak + left clicking, where all items will just drop.

The items that are dropped from a grave being broken are invulnerable and can't be destroyed by things such as lava or explosions, and they take 10min to despawn. (Can be changed in the config.)

<details><summary>Commands</summary><p>
<code>/trigger sgrave set &lt;value&gt;</code>  <br>
&emsp;Sends the coordinates and the dimension of your grave to you.  <br>
&emsp;Set the value to 1 to locate your last grave.  <br>
&emsp;Set the value to 2 to locate your second last grave.  <br>
&emsp;Set the value to 3 to locate your third last grave.  <br>
&emsp;and so on...  <br>
&emsp;Any players (non-OPs and OPs) can use this command.  <br><br>
<code>/trigger sgrave.grave_info set &lt;value&gt;</code><br>
&emsp;Shows info about the grave with the ID of the value you entered. Currently it only shows the location and the amount of experience, but it will also show the items as well.  <br>
&emsp;For example to show information about grave #4, use <code>/trigger sgrave.grave_info set 4</code>.  <br>
&emsp;Any players (non-OPs and OPs) can use this command. <br><br>
<code>/function sul4ur:sgrave/config</code>  <br>
&emsp;Opens the config menu. Only OPs can use this command.
</p></details>
