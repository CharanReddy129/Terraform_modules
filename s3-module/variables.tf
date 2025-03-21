variable "region" {
  description = "This is for providing the region"
  default     = "ap-south-1"
  type        = string
}

variable "bucket_name" {
  description = "This to specify the bucket name"
  type        = string
}

variable "force_destroy" {
  description = "This is for destroying the bucket"
  type        = bool
  default     = false
}

variable "versioning" {
  description = "Either versioning is enabled or not"
  type        = bool
  default     = false
}

variable "versioning_status" {
  description = "This for either versioning is enabled or not"
  type        = string
  default     = "Enabled"
}

variable "public_access" {
  description = "For enabling the public access or not"
  type        = bool
  default     = false
}

variable "sse" {
  description = "either enabling or disabling the encryption"
  type        = bool
  default     = false
}

variable "sse_algorithm" {
  description = "This is for the sse algorith"
  type        = string
  default     = "AES256"
}