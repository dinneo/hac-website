import Foundation
import Kitura
import HaCTML
import LoggerAPI
import HeliumLogger
import DotEnv
import SwiftyJSON

struct LandingPageController {

  static let eventPostCards : [PostCard] = EventServer.getEvents().flatMap{ event in 
    event.postCardRepresentation
  }

  static let videos = [
    PostCard(
      title: "Partial Recursive Functions 1: Functions",
      category: .video,
      description: "Learn all the things.",
      backgroundColor: "#852503",
      imageURL: Assets.publicPath("/images/functions_frame.png")
    ),
    PostCard(
      title: "TCP Throughput",
      category: .video,
      description: "Learn all the things.",
      backgroundColor: "green",
      imageURL: Assets.publicPath("/images/workshop.jpg")
    )
  ]

  static let updates = eventPostCards + videos

  static var handler: RouterHandler = { request, response, next in
    try response.send(
      LandingPage(
        updates: updates,
        feature: LandingFeatures.currentFeature
      ).node.render()
    ).end()
  }
}
