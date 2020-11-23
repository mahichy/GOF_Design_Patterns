module Newsletter
	class Generator

		def initialize format
			@format = format
		end

		def render
		<<EOF
#{header}
		
#{content}
EOF
		
		end

		def header
			raise NotImplementedError
			if @format == :html
			"<h1>Hello World:</h1>"
			elsif @format == :markdown
			"#Hello world!"
			end
		end

		def content
			raise NotImplementedError
			if @format == :html
			<<EOF
<div class="content">
	<p>lorem ipsum</p>
</div>
EOF
			elsif @format == :markdown
			"lorem ipsum"
			end
		end
	end
end