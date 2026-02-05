terraform {
  backend "s3" {
    bucket = "minchang-tfstate-backend-2026" # 1단계에서 만든 버킷 이름 (정확해야 함!)
    key    = "terraform.tfstate"             # 장부 파일 이름 (이대로 두세요)
    region = "ap-northeast-2"
  }
}

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