require 'album.rb'

class AlbumRepository
    def all
        sql = 'SELECT id, title, release_year, artist_id  FROM albums;'
        result_set = DatabaseConnection.exec_params(sql, [])

        albums = []

        result_set.each do|record|
            album = Album.new
            album.id = record['id']
            album.title = record['title']
            album.release_year = record['release_year']
            album.artist_id = record['artist_id']

            albums << album
        end
    
        return albums
    end
end


#     def find(id)
#         sql = "SELECT id, name, genre FROM albums WHERE id = $1;"
#         paramas = [id]
#         result = DatabaseConnection.exec_params(sql, params)

#         record = result[0]

#         album = Album.new
#         album.id = record['id']
#         album.title = record['title']
#         album.release_year = record['release_year']
#         album.artist_id = record['artist_id']

#         album
#     end
# end