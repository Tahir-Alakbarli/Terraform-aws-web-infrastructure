locals {
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    Owner       = var.owner
    ManagedBy   = "Terraform"
  }

  rendered_html = templatefile("${path.module}/Website/index.html.tftpl", {
    page_title = var.page_title
  })

  rendered_css = file("${path.module}/Website/style.css")

  chicken_image_url = "https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Rooster_and_Chickens%28GN00657%29.jpg/1280px-Rooster_and_Chickens%28GN00657%29.jpg"

  rendered_user_data = templatefile("${path.module}/Templates/user_data.sh.tftpl", {
    html_base64 = base64encode(local.rendered_html)
    css_base64  = base64encode(local.rendered_css)
    image_url   = local.chicken_image_url
  })
}
