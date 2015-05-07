Fabricator(:hit) do
  ip         "127.0.0.1"
  path       "/some/full/path"
  user_agent "Some user agent"
  referer    "Some referer"
end
