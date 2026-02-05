provider "aws" {
  region = "ap-northeast-2"
}

# 테스트용 S3 버킷 (이름은 전세계 유일해야 하므로 뒤에 숫자 등을 바꿔주세요)
resource "aws_s3_bucket" "test_bucket" {
  bucket = "minchang-terraform-test-20260205-v2" 
  
  tags = {
    Name        = "Test bucket"
    Environment = "Dev"
  }
}