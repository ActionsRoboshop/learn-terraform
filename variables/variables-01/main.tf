resource "null_resource" "sample" {
  triggers = {
    name = "hello1"
  }
  for_each  = var.fruits
  provisioner "local-exec" {
    command   = "echo  fruitname=${each.value["fruit_name"]} cost=${lookup(each.value,"cost",400)}"
  }
}