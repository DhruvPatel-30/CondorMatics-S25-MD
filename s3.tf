resource "trandom_integer" "aws_s3_bucke" {
    min = 1000
    max = 9999
}
resource "aws_s3_bucket" "web_bucket" {
    bucket = "condorematics-prog8830-${random_integer.s3_bucket_suffix.result}"
}

resource "aws_s3_bucket_versioning" "web_bucket_versioning" {
 bucket = aws_s3_bucket.web_bucket.id

     versioning_configuration {
       status = "Disabled"
     } 
}

resource "aws_s3_object" "html_file" {
 bucket = aws_s3_bucket.web_bucket.id
 key = "./webcontent/index.html"
 source = "./webcontent/index.html"
   
}

resource "aws_s3_object" "campus_image" {
 bucket = aws_s3_bucket.web_bucket.id
 key = "./webcontent/programs.jpg"
 source = "./webcontent/programs.jpg"
   
}
resource "aws_s3_object" "student_img" {
 bucket = aws_s3_bucket.web_bucket.id
 key = "./webcontent/students.img"
 source = "./webcontent/students.img"
   
}
