import LinkNavigator
import SwiftUI

struct Page1RouteBuilder: RouteBuilder {
  var matchPath: String { "page1" }

  var build: (LinkNavigatorType, [String: String], DependencyType) -> MatchingViewController? {
    { navigator, items, dep in
      WrappingController(matchPath: matchPath) {
        Page1View(
          store: .init(
            initialState: Page1.State(),
            reducer: Page1()))
      }
    }
  }
}
