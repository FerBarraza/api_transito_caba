defmodule ApiElixir do

	def transito do
		request("https://apitransporte.buenosaires.gob.ar/transito/v1/cortes?client_id=abbf905ff3d2490fbe7fa3f7a05c2e8b&client_secret=B9E5F51358344Ae5a338da50B9c250Ae")
		|> body
                |> parse_body_to_tuple
#                |> get_list_to_tuple
 #               |> get_map_to_list
                |> create_message
                |> show_message	
	end

	defp request(url) do
		HTTPoison.get url
	end

	defp body(response) do
		response.body
	end

	defp parse_body_to_tuple(body) do
		Poison.decode! body
	end
	
#	defp get_list_to_tuple(body) do
#		elem(tuple,1)
#	end

#	defp get_map_to_list(list) do
#		list |> Enum.at 0
#	end

	defp create_message(map) do
#		"> #{map}"
	end

	defp show_message(message) do
		IO.puts message
	end

end
