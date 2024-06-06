variable "name" {
  default = {
    Name = "Roboshop-Project"
    app  = "frontend"
  }
}

output "merge-function" {
  value = merge(var.name,{
    company = "Thaught-works"
    company1 = "sony-india"
  },{
    company5 = "India"
  })
}