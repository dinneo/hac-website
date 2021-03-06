import HaCTML

private func thanksString(thanks: Workshop.Thanks) -> String {
  if let reason = thanks.reason {
    return "\(thanks.to) for \(reason)"
  }

  return thanks.to
}

private func workshop(_ workshop: Workshop) -> Node {
  return El.Div.containing(
    El.H2[Attr.className => "mono"].containing(workshop.title),
    El.H3.containing("Description"),
    workshop.description,
    El.H3.containing("Prerequisites"),
    workshop.prerequisites,
    El.H3.containing("Recommended Links"),
    El.Ul.containing(
      workshop.recommendations.map({
        El.Li.containing(
          El.A[Attr.href => $0.url.absoluteString].containing($0.title)
        )
      })
    ),
    El.P.containing("With thanks to"),
    El.Ul.containing(
      workshop.thanks.map({
        El.Li.containing(thanksString(thanks: $0))
      })
    ),
    El.P.containing(
      TextNode("Tags: "),
      TextNode(workshop.tags.joined(separator: ", "))
    )
  )
}

extension UI.Pages {
  static func workshops(workshops: [Workshop]) -> Node {
    return UI.Pages.base(
      title: "Workshops",
      content: Fragment(
        TextNode("There are \(workshops.count) workshops."),
        El.Br,
        Fragment(workshops.map(workshop))
      )
    )
  }
}
