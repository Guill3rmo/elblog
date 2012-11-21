module ApplicationHelper
	
	def flash_class(type)
		case type
		when :alert
			"alert-error"
		when :notice
			"alert-success"
		else
			""
		end
	end

 def markdown(text)
    render = Redcarpet::Render::HTML.new(hard_wrap: true, filter_html:true)
    options = {
      autolink: true,
      no_intra_emphasis: true,
      fenced_code_blocks: true,
      lax_html_blocks: true,
      superscript: true
    }
    Redcarpet::Markdown.new(render, options).render(text).html_safe
  end


end #Este end cierra todo
