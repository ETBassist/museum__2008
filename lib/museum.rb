class Museum
  attr_reader :name, :exhibits, :patrons

  def initialize(name)
    @name = name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    @exhibits.select do |exhibit|
      patron.interests.include?(exhibit.name)
    end
  end

  def admit(patron)
    @patrons << patron
  end

  def patrons_by_exhibit_interest
    patrons_by_interest = Hash.new { |hash, key| hash[key] = [] }
    @exhibits.each do |exhibit|
      @patrons.each do |patron|
        if patron.interests.include?(exhibit.name)
          patrons_by_interest[exhibit] << patron
        end
      end
    end
    patrons_by_interest
  end

  def ticket_lottery_contestents(exhibit)
    @patrons.select do |patron|
      patron.spending_money < exhibit.cost
    end
  end

  def draw_lottery_winner(exhibit)
    winner = ticket_lottery_contestents(exhibit).sample
    winner.name if !winner.nil?
  end

  def announce_lottery_winner(exhibit)
    if draw_lottery_winner(exhibit).nil?
      "No winners for this lottery"
    else
      "#{draw_lottery_winner(exhibit)} has won the #{exhibit.name} exhibit lottery"
    end
  end
end
