import HaCTML

struct NotFound {
  
  var node: Node {
    return UI.Pages.base(
      title: "Page Not Found",
      content: Fragment(
        El.Div[Attr.className => "NotFound"].containing(
          El.Img[
            Attr.className => "LandingIntroduction__titleImage",
            Attr.src => "/static/images/hac-logo-dark.svg",
            Attr.alt => "Hackers at Cambridge"
          ],
          El.Div[Attr.className => "LandingIntroduction__tagLine"].containing("Cambridge's student tech society"),
          El.H1[Attr.className => "NotFound__title"].containing("404"),
          El.P.containing("We can't find the page you're looking for..."),
          El.A[Attr.href => "/"].containing(
            El.Div[Attr.className => "Interaction__bigButton"].containing(
              "Home"
            )
          )
        )
      )
    )
  }
}
