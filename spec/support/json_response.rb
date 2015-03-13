module JsonResponse
  def json
    @json_response ||= JSON.parse(response.body)
  end
end
