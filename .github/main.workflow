workflow "Test and publish" {
  on = "push"
  resolves = ["Publish"]
}

action "Test" {
  uses = "Igor1201/dart-test-action@master"
}

action "Master" {
  needs = "Test"
  uses = "actions/bin/filter@master"
  args = "branch master"
}

action "Tag" {
  needs = "Master"
  uses = "actions/bin/filter@master"
  args = "tag v*"
}

action "Publish" {
  uses = "Igor1201/actions/pub-publish@master"
  secrets = ["PUB_ACCESS_TOKEN", "PUB_REFRESH_TOKEN", "PUB_EXPIRATION"]
  needs = ["Tag"]
}
