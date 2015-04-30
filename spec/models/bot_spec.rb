require 'rails_helper'

RSpec.describe Bot, type: :model do
  describe "validate ip unqueiness" do 

    before { Fabricate(:bot) }

    context "second bot with same ip" do
      let(:bot) { Fabricate.build(:bot) }

      it "should return false" do
        expect(bot.valid?).to eq false
      end
    end    

    context "second bot with diferrent ip" do
      let(:bot) { Fabricate.build(:bot, ip: "127.0.0.2") }

      it "should return true" do
        expect(bot.valid?).to eq true
      end
    end
  end
end
