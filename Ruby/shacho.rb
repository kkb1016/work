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

require_relative 'shain'
require_relative 'bumon'

if __FILE__ == $0
    shain = Shain.new("佐藤", "千葉県")
    shain2= Shain.new("小林", "長野")
    bumon = Bumon.new("営業部", "東京都")
    bumon.add(shain)
    bumon.add(shain2)
    shain.work()
    bumon.work()
    bumon.get_child().work()
    bumon.work_all()
    #shain.set_yakushoku_tanto
    #shain.ask
    #shain.set_yakushoku_shunin
    #shain.ask
end