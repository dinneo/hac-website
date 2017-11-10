import HaCTML

// swiftlint:disable line_length

struct LandingPage {
  let updates: [PostCard]
  let feature: LandingFeature?
  let youtubeUrl = "https://www.youtube.com/hackersatcambridge"
  let facebookUrl = "https://www.facebook.com/hackersatcambridge"
  let githubUrl = "https://github.com/hackersatcambridge/"
  let mediumUrl = "https://medium.com/hackers-at-cambridge"
  let calendarUrl = "https://calendar.google.com/calendar/embed?src=10isedeg17ugvrvg73jq9p5gts%40group.calendar.google.com&ctz=Europe/London"

  var featureNode: Nodeable? {
    return feature.map{ feature in 
      El.Section[Attr.className => "LandingFeature LandingTop__feature"].containing(
        El.H1[Attr.className => "LandingFeature__subtitle Text--sectionHeading"].containing("Featured"),
        El.Div[Attr.className => "LandingFeature__hero"].containing(feature)
      )
    }
  }

  var node: Node {
    return UI.Pages.base(
      title: "Hackers at Cambridge",
      content: Fragment(
        El.Div[Attr.className => "LandingTop"].containing(
          El.Header[Attr.className => "LandingIntroduction LandingTop__introduction"].containing(
            El.Div[Attr.className => "LandingIntroduction__titleContainer"].containing(
              El.Img[
                Attr.className => "SiteLogo",
                Attr.src => "/static/images/hac-logo-dark.svg",
                Attr.alt => "Hackers at Cambridge"
              ],
              El.Div[Attr.className => "TagLine"].containing("Cambridge's student tech society")
            ),
            El.P[Attr.className => "LandingIntroduction__missionStatement"].containing("We are a community focused on learning about and building things with technology."),
            El.A[Attr.href => "http://eepurl.com/ckeD2b"].containing(
              El.Div[Attr.className => "BigButton"].containing(
                "Join our mailing list"
              )
            ),
            El.Div[Attr.className => "LandingIntroduction__social"].containing(
              El.Div[Attr.className => "LandingIntroduction__socialText"].containing("And find us on"),
              El.Div[Attr.className => "LandingIntroduction__socialIconRow"].containing(
                El.A[Attr.href => githubUrl, Attr.className => "LandingIntroduction__socialLinkIcon"].containing(
                  El.Img[
                    Attr.className => "LandingIntroduction__socialLinkIconImg",
                    Attr.src => "/static/images/github_icon.svg",
                    Attr.alt => "GitHub"
                  ]
                ),
                El.A[Attr.href => facebookUrl, Attr.className => "LandingIntroduction__socialLinkIcon"].containing(
                  El.Img[
                    Attr.className => "LandingIntroduction__socialLinkIconImg",
                    Attr.src => "/static/images/facebook_icon.svg",
                    Attr.alt => "Facebook"
                  ]
                ),
                El.A[Attr.href => youtubeUrl, Attr.className => "LandingIntroduction__socialLinkIcon"].containing(
                  El.Img[
                    Attr.className => "LandingIntroduction__socialLinkIconImg",
                    Attr.src => "/static/images/youtube_icon.svg",
                    Attr.alt => "YouTube"
                  ]
                ),
                El.A[Attr.href => mediumUrl, Attr.className => "LandingIntroduction__socialLinkIcon"].containing(
                  El.Img[
                    Attr.className => "LandingIntroduction__socialLinkIconImg",
                    Attr.src => "/static/images/medium_icon.svg",
                    Attr.alt => "Medium"
                  ]
                )
              )
            )
          ),
          featureNode
        ),
        // El.Section[Attr.className => "LandingUpdateFeed"].containing(
        //   El.H1[Attr.className => "LandingUpdateFeed__title Text--sectionHeading"].containing("Updates"),
        //   El.Div[Attr.className => "LandingUpdateFeed__postContainer"].containing(
        //     updates.map {
        //       El.Div[Attr.className => "LandingUpdateFeed__item"].containing($0.node)
        //     }
        //   )
        // ),
        El.Article[Attr.className => "LandingAbout", Attr.id => "about"].containing(
          El.Div[Attr.className => "LandingAbout__section"].containing(
            El.Div[Attr.className => "LandingAbout__imageContainer"].containing(
              El.Img[
                Attr.className => "LandingAbout__image",
                Attr.src => "/static/images/whoishac.jpg"
              ]
            ),
            El.Div[Attr.className => "LandingAbout__text"].containing(
              El.H1[Attr.className => "LandingAbout__subtitle Text--sectionHeading"].containing("About"),
              El.H2[Attr.className => "LandingAbout__headline"].containing("Who are Hackers at Cambridge?"),
              El.P.containing(
                "Don't let the name scare you, we aren't the kind of hackers that try our best to get around complex security systems! We are simply an enthusiastic group of people who love technology."
              ),
              El.P.containing(
                "Are you a student in Cambridge? Do you want to improve your Tech skills? Then you’ve come to the right place!"
              ),
              El.P.containing(
                "At HaC it’s our mission to empower everyone to build whatever technology project they want. Whether you are a complete beginner or a seasoned pro, we're here to help you develop and share your skills."
              )
            )
          ),
          El.Article[Attr.className => "LandingAbout__section"].containing(
            El.Div[Attr.className => "LandingAbout__imageContainer"].containing(
              El.Img[
                Attr.className => "LandingAbout__image",
                Attr.src => "/static/images/hacworkshop.jpg"
              ]
            ),
            El.Div[Attr.className => "LandingAbout__text"].containing(
              El.H1[Attr.className => "LandingAbout__headline"].containing("Workshops"),
              El.P.containing(
                "Run by members of the community and open to everyone, our workshops aim to inspire and to teach practical technology skills."
              ),
              El.P.containing(
                "If you've missed one of our workshops and would like to catch up, check out our ",
                El.A[Attr.href => youtubeUrl].containing("YouTube"),
                " page for recordings. "
              ),
              El.P.containing(
                "If you would like to help out at one of our workshops, join the ",
                "demonstrators group",
                " here, we'd love to have you! "
              )
            )
          ),
          El.Article[Attr.className => "LandingAbout__section"].containing(
            El.Div[Attr.className => "LandingAbout__imageContainer"].containing(
              El.Img[
                Attr.className => "LandingAbout__image",
                Attr.src => "/static/images/hachackathon.jpg"
              ]
            ),
            El.Div[Attr.className => "LandingAbout__text"].containing(
              El.H1[Attr.className => "LandingAbout__headline"].containing("Hackathons and Game Jams"),
              El.P.containing(
                "At the end of the Michaelmas we run the annual Hackers at Cambridge Game Gig - a fun and friendly competition where 100 Cambridge students from a wide variety of courses get together to make games in 12 hours"
              ),
              El.P.containing(
                "At the end of the Lent term we additionally run an annual themed hackathon. Last year we partnered with charities in order to tackle problems around the world."
              ),
              El.P.containing(
                "These competitions naturally come with lots of awesome free food."
              )
            )
          ),
          El.Article[Attr.className => "LandingAbout__section"].containing(
            El.Div[Attr.className => "LandingAbout__imageContainer"].containing(
              El.Img[
                Attr.className => "LandingAbout__image",
                Attr.src => "/static/images/hashcode.jpg"
              ]
            ),
            El.Div[Attr.className => "LandingAbout__text"].containing(
              El.H1[Attr.className => "LandingAbout__headline"].containing("HaC Nights"),
              El.P.containing(
                "HaC Nights are weekly events we run for people of all experience levels! If you have something you’re working on - be it a project, some supervision work or coursework – then a HaC night is a great social environment for getting things done."
              ),
              El.P.containing(
                "We’ll bring the food, you bring the work and if you get stuck, there’s bound to be someone in the room who can help you out!"
              ),
              El.P.containing(
                TextNode("Find us on our "),
                El.A[Attr.href => facebookUrl
            ].containing("Facebook"),
                TextNode(" page to stay up to date.")
              )
            )
          )
        )
      )
    )
  }
}
