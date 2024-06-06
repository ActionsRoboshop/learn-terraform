#resource "null_resource" "sample" {
#  for_each  = var.fruits
#  provisioner "local-exec" {
#    command   = "echo  fruitname=${each.value["fruit_name"]} cost=${lookup(each.value,"cost",400)}"
#  }
#}

#resource "null_resource" "sample1" {
#  for_each  = var.fruits
#  provisioner "local-exec" {
#    command   = "echo  fruitname=${var.fruits[each.key].fruit_name} cost=${var.fruits[each.key]["cost"]}"
#  }
#}

resource "null_resource" "sample2" {
  for_each  = var.fruits
  provisioner "local-exec" {
    command   = "echo  fruitname=${lookup(lookup(var.fruits,each.key,"default"),"fruit_name","common")}"
  }
}