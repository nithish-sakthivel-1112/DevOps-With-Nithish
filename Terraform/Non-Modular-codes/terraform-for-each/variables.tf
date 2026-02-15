variable "instances" {
    type = map(object({
        os = string
        instance_type = string
    }))
    default = {
        instance1 = {
            os = "amazon",
            instance_type="t2.micro"    
        }
        instance2 = {
            os = "ubuntu",
            instance_type="t3.micro"
            }
    }
}