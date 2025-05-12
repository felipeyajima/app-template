resource "helm_release" "java_app" {
  name  = "java-app"
  chart = "./app-chart"
  namespace  = "app-test"
  set {
    name  = "image.tag"
    value = "latest"
  }
  set {
    name  = "image.repository"
    value = "felipebatista765/restaurants"
  }
}
