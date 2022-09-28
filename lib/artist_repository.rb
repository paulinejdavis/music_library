require_relative './artist'

class ArtistRepository
    def all
        sql = 'SELECT id, name, genre FROM artists;'
        result_set = DatabaseConnection.exec_params(sql, [])

        artists = []

        result_set.each do|record|
        artist = Artist.new
        artist.id = record['id']
        artist.name = record['name']
        artist.genre = record['genre']

        artists << artist
        end
    
        return artists
    end
end


#     def find(id)
#         sql = "SELECT id, name, genre FROM artists WHERE id = $1;"
#         paramas = [id]
#         result = DatabaseConnection.exec_params(sql, params)

#         record = result[0]

#         artist = Artist.new
#         artist.id = record['id']
#         artist.name = record['name']
#         artist.genre = record['genre']

#         artist
        

#     end
# end