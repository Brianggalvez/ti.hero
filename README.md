# Ti.Hero

PoC of Titanium swift Module support. https://github.com/HeroTransitions/Hero

Currently it extend TiViewProxy and TiWindowProxy to support `hero.id` and `hero.isEnabled`.

If using `NavigationWindow` set `hero.enabled` for current window before open new.
```js
currentWin.hero = { enabled:true };
nav.openWindow(newWin);
```



## With Hero
![alt text](documentation/with-hero.gif "With Hero") ![alt text](documentation/navigation-with-hero.gif "With Hero Navigation")

## Without Hero
![alt text](documentation/without-hero.gif "Without Hero") ![alt text](documentation/navigation-without-hero.gif "Without Hero Navigation") 
