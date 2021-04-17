module ApplicationHelper
  def default_meta_tags
    {
        site: "アキオ・ハッカソン",
        title: "オンラインハッカソンサービス",
        reverse: true,
        charset: "utf-8",
        icon:[
            {
                href: image_url("favicon.ico")
            }
        ],
        viewport: "width=device-width, initial-scale=0.8",
        robots: "noindex" #完成時に外す.
    }
  end
end
