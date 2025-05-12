resource "helm_release" "java_app" {
  name  = "java-app"
  chart = "${path.module}/charts/java-app"
  ...
}
