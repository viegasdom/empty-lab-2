resource "lab" "main" {
  title       = "Connect Test E - Feature Branch"
  description = "Outline the lab's learning objectives, topics, and prerequisites."

  layout = resource.layout.single_panel

  settings {
    theme = "modern-dark"

    timelimit {
      duration   = "15m"
      show_timer = true
    }

    idle {
      enabled      = true
      timeout      = "5m"
      show_warning = true
    }

    controls {
      show_stop = true
    }
  }
  content {
    chapter "getting-started" {
      title = "Getting Started"
      page "welcome" {
        title     = "Welcome"
        reference = resource.page.welcome
      }
    }
  }
}
