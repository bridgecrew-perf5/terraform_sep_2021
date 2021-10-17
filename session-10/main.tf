module "ec2" {
    source = "github.com/aKumoSolutions/terraform_sep_2021/modules/ec2"
    ami = "ami-0c2d06d50ce30b442"
    instance_type = "t2.micro"
    env = "dev"
    bucket_name = module.s3.s3_name      # Reference to output
}
module "s3" {
    source = "../modules/s3"
    env = "dev"
}



// github.com/ = main domain
// aKumoSolutions/ = organization 
// terraform_sep_2021/ = repository
// tree/ = branches
// main/ = branch
// modules/ = subdirectory
// ec2/ = subdirectory 
