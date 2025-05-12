resource "helm_release" "java_app" {
  name  = "java-app"
  chart = "./app-chart"
  namespace  = "app-test"
  create_namespace = true
  set {
    name  = "image.tag"
    value = "latest"
  }
  set {
    name  = "image.repository"
    value = "felipebatista765/restaurants"
  }
}
