module Newsletter
	class Generator
		def render
			<<EOF
			<h1>Hello World:</h1>		
<div class="content">
	<p>lorem ipsum</p>
</div>
EOF
		end
	end


end