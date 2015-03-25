# Copyright 2015 Simon Dawson <spdawson@gmail.com>

# This file is part of bank_statement_parser.
#
# bank_statement_parser is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# bank_statement_parser is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with bank_statement_parser. If not, see <http://www.gnu.org/licenses/>.

module BankStatementParser

  # A bank statement record
  class StatementRecord
    attr_accessor :date, :type, :credit, :amount, :detail

    # Constructor
    def initialize date: nil, type: nil, credit: nil, amount: nil, detail: nil
      @date = date
      @type = type
      @credit = credit
      @amount = amount
      @detail = detail
    end

    # Stringify
    def to_s
      "%s:%s:%s:%f:%s" % [date, type, credit.to_s, amount, detail]
    end

    # Equality test
    def ==(other)
      super || (date == other.date &&
                type == other.type &&
                credit == other.credit &&
                amount == other.amount &&
                detail = other.detail)
    end
  end

end