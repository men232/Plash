import Cocoa
import SwiftUI

final class PreferencesWindowController: NSWindowController {
	convenience init() {
		let window = NSWindow()
		self.init(window: window)

		let view = PreferencesView()

		window.title = "Plash Preferences"
		window.styleMask = [
			.titled,
			.closable
		]
		window.level = .modalPanel
		window.contentView = NSHostingView(rootView: view)
		window.center()
	}

	func showWindow() {
		NSApp.activate(ignoringOtherApps: true)
		window?.makeKeyAndOrderFront(nil)
	}
}