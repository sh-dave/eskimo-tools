package;

import eskimo.containers.EntityArray;
import eskimo.EntityManager;

class EskimoTools {
	// workaround for https://github.com/PDeveloper/eskimo/issues/15
	public static function removeComponentFromEntities<T>( mgr: EntityManager, entities: EntityArray, component: Class<T> ) {
		if (entities.length > 0) { // without this check it will `set(e, null)` every frame
			for (e in entities.entities) {
				mgr.components.remove(e, component);
			}
		}
	}
}
