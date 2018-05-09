# eskimo-tools

Workarounds for current eskimo issues.

- https://github.com/PDeveloper/eskimo/issues/15 => removeComponentsFromEntities

```haxe
override function onUpdate( _ ) {
	// this loop won't work properly as entities are removed from the view when
	// you remove a component and so the iterator will skip some entities
	for (e in someView.entities) {
		someView.manager.components.remove(e, SomeComponent);
	}

	// use this instead after iterating your view
	EskimoTools.removeComponentFromEntities(someView.manager, someView.entities, SomeComponent);
}
```

