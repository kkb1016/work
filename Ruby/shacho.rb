# -*- encoding: utf-8 -*-
class Yakushoku
    def ask
        puts ""
    end
end

class Shunin < Yakushoku
    def ask
        puts "積極的に攻めていきましょう"
    end
end

class Tanto < Yakushoku
    def ask
        puts "まずは様子を見ましょう"
    end
end

class Shain
    def initialize
        @yakushoku = Yakushoku.new
    end
    
    def ask
        @yakushoku.ask
    end

    def set_yakushoku_tanto
        @yakushoku = Tanto.new
    end

    def set_yakushoku_shunin
        @yakushoku = Shunin.new
    end
end

if __FILE__ == $0
    shain = Shain.new
    shain.set_yakushoku_tanto
    shain.ask
    shain.set_yakushoku_shunin
    shain.ask
end