require 'sheetsu/util'
require 'sheetsu/errors'
require 'sheetsu/request'

require 'json'

module Sheetsu
  class Write < Sheetsu::Request

    def row(row, options={})
      add_options_to_url(options)

      response = call(:post, row)
      parse_response(response)
    end

    def rows(rows, options={})
      add_options_to_url(options)

      response = call(:post, { rows: rows })
      parse_response(response)
    end
  end
end
