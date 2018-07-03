require 'sqlite3'
require 'singleton'

# class PlaywrightDBConnection < SQLite3::Database
#   include Singleton
#   def initialize
#     super('playwrights.db')
#     self.type_translation = true
#     self.results_as_hash = true
#   end
# end

class Playwright

  def self.all
    data = PlayDBConnection.instance.execute("SELECT * FROM playwrights")
    data.map { |datum| Playwright.new(datum) }
  end

  def self.find_by_name(name)
    PlayDBConnection.instance.execute(<<-SQL, name)
      SELECT
        *
      FROM
        playwrights
      WHERE
        playwrights.name = ?
    SQL
  end


  attr_accessor :name
  def initialize(options)
    @id = options['id']
    @name = options['name']
  end

  def create
    raise "#{self} already in database" if @id
    PlayDBConnection.instance.execute(<<-SQL, @name)
      INSERT INTO
        playwrights (name)
      VALUES
        (?)
    SQL
    @id = PlayDBConnection.instance.last_insert_row_id
  end

  def update
    raise "#{self} not in database" unless @id
    PlayDBConnection.instance.execute(<<-SQL, @name, @id)
      UPDATE
        playwrights
      SET
        name = ?
      WHERE
        id = ?
    SQL
  end

  def get_plays
    PlayDBConnection.instance.execute(<<-SQL, name)
      SELECT
        title
      FROM
        playwrights
      JOIN
        plays ON plays.playwright_id = playwrights.id
      WHERE
        playwrights.name = ?
    SQL
  end

end
