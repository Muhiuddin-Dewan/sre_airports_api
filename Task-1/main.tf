resource "google_storage_bucket" "airport_images" {
  name     = "bd-airport-images-bucket"
  location = "US"
}

output "bucket_url" {
  value = google_storage_bucket.airport_images.url
}