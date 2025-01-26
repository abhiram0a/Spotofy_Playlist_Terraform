resource "spotify_playlist" "my_playlist" {
    name = "Dream Pop"
    tracks = ["0yc6Gst2xkRu0eMLeRMGCX"]
}

data "spotify_search_track" "taylor_swift" {
  artist = "Taylor Swift"
}

resource "spotify_playlist" "taylor_swift_tracks" {
  name   = "Taylor Swift Tracks"
  tracks = [
    data.spotify_search_track.taylor_swift.tracks[0].id,
    data.spotify_search_track.taylor_swift.tracks[1].id,
    data.spotify_search_track.taylor_swift.tracks[2].id
  ]
}
