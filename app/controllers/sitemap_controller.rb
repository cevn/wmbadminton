class SitemapsController < ApplicationController
  def show
    # Redirect to CloudFront and S3
    redirect_to "http://d1ifn4fgg0ycb6.cloudfront.net/sitemaps/sitemap.xml.gz"
  end
end
