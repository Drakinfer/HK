module SidebarHelper
  class ActionBar
    attr_accessor :elements
    def initialize
      @elements = []
    end

    def element(title, icon, content, options= {})
      access = (options[:access].nil? || options[:access].to_bool)
      options.reject! {|k,v| k == :access}
      return "" if !access

      content = "" if content.nil?

      @elements << OpenStruct.new({
                                          :id => title.downcase.split(" ").join("_"),
                                          :title => title,
                                          :icon => icon,
                                          :content => content,
                                          :options => options
                                  })
    end
  end

  def sidebar(options = {}, &block)
    @bar = ActionBar.new
    capture(@bar, &block)

    links = []

    @bar.elements.each do |element|
      link_options = element.options.merge({ title: element.title, class: "side-icon" })
      # Si 'element.content' est un symbole représentant un chemin, convertissez-le en chemin réel en utilisant 'send'.
      # Cela est nécessaire car 'link_to' ne peut pas traiter un symbole comme un chemin sans cette conversion.
      path = element.content.is_a?(Symbol) ? send(element.content) : element.content

      links << link_to(element.icon, path, link_options)
    end

    html = %Q(
        <aside id="sidebar">
          <ul>
            <li>#{links.join("</li><li>")}</li>
          </ul>
        </aside>
      )

    return html.html_safe
  end
end