resource "kubectl_manifest" "sock_shop_00-sock-shop-ns" {
  yaml_body = file("${path.module}/sock-app/00-sock-shop-ns.yaml")
}
resource "kubectl_manifest" "sock_shop_01-carts-dep" {
  yaml_body = file("${path.module}/sock-app/01-carts-dep.yaml")

  depends_on = [
    kubectl_manifest.sock_shop_00-sock-shop-ns
  ]
}
resource "kubectl_manifest" "sock_shop_02-carts-svc" {
  yaml_body = file("${path.module}/sock-app/02-carts-svc.yaml")

  depends_on = [
    kubectl_manifest.sock_shop_00-sock-shop-ns
  ]
}
resource "kubectl_manifest" "sock_shop_03-carts-db-dep" {
  yaml_body = file("${path.module}/sock-app/03-carts-db-dep.yaml")

  depends_on = [
    kubectl_manifest.sock_shop_00-sock-shop-ns
  ]
}
resource "kubectl_manifest" "sock_shop_04-carts-db-svc" {
  yaml_body = file("${path.module}/sock-app/04-carts-db-svc.yaml")

  depends_on = [
    kubectl_manifest.sock_shop_00-sock-shop-ns
  ]
}
resource "kubectl_manifest" "sock_shop_05-catalogue-dep" {
  yaml_body = file("${path.module}/sock-app/05-catalogue-dep.yaml")

  depends_on = [
    kubectl_manifest.sock_shop_00-sock-shop-ns
  ]
}
resource "kubectl_manifest" "sock_shop_06-catalogue-svc" {
  yaml_body = file("${path.module}/sock-app/06-catalogue-svc.yaml")

  depends_on = [
    kubectl_manifest.sock_shop_00-sock-shop-ns
  ]
}
resource "kubectl_manifest" "sock_shop_07-catalogue-db-dep" {
  yaml_body = file("${path.module}/sock-app/07-catalogue-db-dep.yaml")

  depends_on = [
    kubectl_manifest.sock_shop_00-sock-shop-ns
  ]
}
resource "kubectl_manifest" "sock_shop_08-catalogue-db-svc" {
  yaml_body = file("${path.module}/sock-app/08-catalogue-db-svc.yaml")

  depends_on = [
    kubectl_manifest.sock_shop_00-sock-shop-ns
  ]
}
resource "kubectl_manifest" "sock_shop_09-front-end-dep" {
  yaml_body = file("${path.module}/sock-app/09-front-end-dep.yaml")

  depends_on = [
    kubectl_manifest.sock_shop_00-sock-shop-ns
  ]
}
resource "kubectl_manifest" "sock_shop_10-front-end-svc" {
  yaml_body = file("${path.module}/sock-app/10-front-end-svc.yaml")

  depends_on = [
    kubectl_manifest.sock_shop_00-sock-shop-ns
  ]
}
resource "kubectl_manifest" "sock_shop_11-orders-dep" {
  yaml_body = file("${path.module}/sock-app/11-orders-dep.yaml")

  depends_on = [
    kubectl_manifest.sock_shop_00-sock-shop-ns
  ]
}
resource "kubectl_manifest" "sock_shop_12-orders-svc" {
  yaml_body = file("${path.module}/sock-app/12-orders-svc.yaml")

  depends_on = [
    kubectl_manifest.sock_shop_00-sock-shop-ns
  ]
}
resource "kubectl_manifest" "sock_shop_13-orders-db-dep" {
  yaml_body = file("${path.module}/sock-app/13-orders-db-dep.yaml")

  depends_on = [
    kubectl_manifest.sock_shop_00-sock-shop-ns
  ]
}
resource "kubectl_manifest" "sock_shop_14-orders-db-svc" {
  yaml_body = file("${path.module}/sock-app/14-orders-db-svc.yaml")

  depends_on = [
    kubectl_manifest.sock_shop_00-sock-shop-ns
  ]
}
resource "kubectl_manifest" "sock_shop_15-payment-dep" {
  yaml_body = file("${path.module}/sock-app/15-payment-dep.yaml")

  depends_on = [
    kubectl_manifest.sock_shop_00-sock-shop-ns
  ]
}
resource "kubectl_manifest" "sock_shop_16-payment-svc" {
  yaml_body = file("${path.module}/sock-app/16-payment-svc.yaml")

  depends_on = [
    kubectl_manifest.sock_shop_00-sock-shop-ns
  ]
}
resource "kubectl_manifest" "sock_shop_17-queue-master-dep" {
  yaml_body = file("${path.module}/sock-app/17-queue-master-dep.yaml")

  depends_on = [
    kubectl_manifest.sock_shop_00-sock-shop-ns
  ]
}
resource "kubectl_manifest" "sock_shop_18-queue-master-svc" {
  yaml_body = file("${path.module}/sock-app/18-queue-master-svc.yaml")

  depends_on = [
    kubectl_manifest.sock_shop_00-sock-shop-ns
  ]
}
resource "kubectl_manifest" "sock_shop_19-rabbitmq-dep" {
  yaml_body = file("${path.module}/sock-app/19-rabbitmq-dep.yaml")

  depends_on = [
    kubectl_manifest.sock_shop_00-sock-shop-ns
  ]
}
resource "kubectl_manifest" "sock_shop_20-rabbitmq-svc" {
  yaml_body = file("${path.module}/sock-app/20-rabbitmq-svc.yaml")

  depends_on = [
    kubectl_manifest.sock_shop_00-sock-shop-ns
  ]
}
resource "kubectl_manifest" "sock_shop_21-session-db-dep" {
  yaml_body = file("${path.module}/sock-app/21-session-db-dep.yaml")

  depends_on = [
    kubectl_manifest.sock_shop_00-sock-shop-ns
  ]
}
resource "kubectl_manifest" "sock_shop_22-session-db-svc" {
  yaml_body = file("${path.module}/sock-app/22-session-db-svc.yaml")

  depends_on = [
    kubectl_manifest.sock_shop_00-sock-shop-ns
  ]
}
resource "kubectl_manifest" "sock_shop_23-shipping-dep" {
  yaml_body = file("${path.module}/sock-app/23-shipping-dep.yaml")

  depends_on = [
    kubectl_manifest.sock_shop_00-sock-shop-ns
  ]
}
resource "kubectl_manifest" "sock_shop_24-shipping-svc" {
  yaml_body = file("${path.module}/sock-app/24-shipping-svc.yaml")

  depends_on = [
    kubectl_manifest.sock_shop_00-sock-shop-ns
  ]
}
resource "kubectl_manifest" "sock_shop_25-user-dep" {
  yaml_body = file("${path.module}/sock-app/25-user-dep.yaml")

  depends_on = [
    kubectl_manifest.sock_shop_00-sock-shop-ns
  ]
}
resource "kubectl_manifest" "sock_shop_26-user-svc" {
  yaml_body = file("${path.module}/sock-app/26-user-svc.yaml")

  depends_on = [
    kubectl_manifest.sock_shop_00-sock-shop-ns
  ]
}
resource "kubectl_manifest" "sock_shop_27-user-db-dep" {
  yaml_body = file("${path.module}/sock-app/27-user-db-dep.yaml")

  depends_on = [
    kubectl_manifest.sock_shop_00-sock-shop-ns
  ]
}
resource "kubectl_manifest" "sock_shop_28-user-db-svc" {
  yaml_body = file("${path.module}/sock-app/28-user-db-svc.yaml")

  depends_on = [
    kubectl_manifest.sock_shop_00-sock-shop-ns
  ]
}
