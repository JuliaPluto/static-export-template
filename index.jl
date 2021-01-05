### A Pluto.jl notebook ###
# v0.12.18

using Markdown
using InteractiveUtils

# ╔═╡ 05d075aa-4f6e-11eb-36eb-45d11b723f0b
md"""
# Hello world!

My name is fonsi
"""

# ╔═╡ 90f39e62-434c-4ed0-a0e9-bfef39a24e7e
md"""
## Index
"""

# ╔═╡ 34cab700-81a4-4ff8-9940-bc823065eea2
md"""
## Files:
"""

# ╔═╡ ff3c1dcb-b023-4d12-9b74-1090be7a8dbc
i_am_at = pwd()

# ╔═╡ 8b4d1fe6-e689-44d3-8e31-ce6e3162d882
friends = readdir()

# ╔═╡ f67de92c-b9b4-4d06-b574-ed67433308ff


# ╔═╡ 9cb49c6d-b5fe-4823-b3af-e7a3655d1a5a


# ╔═╡ bcd491b0-50cc-4cd4-9751-9ba8b39f7e0d
notebookfiles = let
	allfiles = filter(isfile, readdir())
	jlfiles = filter(x -> occursin(".jl",x), allfiles)
	
	filter(jlfiles) do f
		readline(f) == "### A Pluto.jl notebook ###"
	end
end

# ╔═╡ 376534be-acfa-4c65-a9c0-d424c63e8a4e
index = """
<ul>
$(map(notebookfiles) do path
	html_filename = if endswith(path, ".jl")
		path[1:end-3] * ".html"
	else
		path * ".html"
	end
	
	"<li><a href=\"$(html_filename)\">$(html_filename)</a></li>"
end |> join
)
</ul>
""" |> HTML

# ╔═╡ 49e8fbca-160b-4872-814a-e4d5a16781c4


# ╔═╡ Cell order:
# ╟─05d075aa-4f6e-11eb-36eb-45d11b723f0b
# ╟─90f39e62-434c-4ed0-a0e9-bfef39a24e7e
# ╠═376534be-acfa-4c65-a9c0-d424c63e8a4e
# ╟─34cab700-81a4-4ff8-9940-bc823065eea2
# ╠═ff3c1dcb-b023-4d12-9b74-1090be7a8dbc
# ╠═8b4d1fe6-e689-44d3-8e31-ce6e3162d882
# ╠═f67de92c-b9b4-4d06-b574-ed67433308ff
# ╠═9cb49c6d-b5fe-4823-b3af-e7a3655d1a5a
# ╠═bcd491b0-50cc-4cd4-9751-9ba8b39f7e0d
# ╠═49e8fbca-160b-4872-814a-e4d5a16781c4
