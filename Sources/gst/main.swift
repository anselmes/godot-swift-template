import Foundation
import SwiftGodot
import SwiftGodotKit
import GodotSwiftTemplate

guard let packPath = Bundle.module.path(forResource: "GodotSwiftTemplate", ofType: "pck") else {
    fatalError("Could not load Pack")
}

func loadScene (scene: SceneTree) {
    scene.root?.addChild(node: Icon2D())
}

func registerTypes (level: GDExtension.InitializationLevel) {
    switch level {
    case .scene:
        #warning("uncomment this line if type casting / lookups don't work")
        // GodotSwiftTemplate.godotTypes.forEach { register(type: $0) }
        break
    default:
        break
    }
}

runGodot(
    args: [
        "--main-pack", packPath
    ],
    initHook: registerTypes,
    loadScene: loadScene,
    loadProjectSettings: { settings in }
)
