module Jekyll
  class ProjectTagPage < PageWithoutAFile
    def initialize(site, base, dir, tag)
      super(site, base, dir, "index.html")
      self.content = ""
      self.data["layout"] = "tag"
      self.data["title"] = tag
    end
  end

  class ProjectTagPageGenerator < Generator
    safe true
    priority :normal

    def generate(site)
      tags = site.data.fetch("projects", []).flat_map do |project|
        project.fetch("tags", [])
      end.uniq.sort

      tags.each do |tag|
        site.pages << ProjectTagPage.new(site, site.source, File.join("tags", tag), tag)
      end
    end
  end
end
