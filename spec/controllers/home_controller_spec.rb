require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe "GET #index" do    
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    context "GET /?page=1" do      
      it "returns http success" do
        get :index, page: "1"
        expect(response).to have_http_status(:success)
      end
    end

    context "GET /?page=4" do
      it "returns http not_found" do
        get :index, page: "4"
        expect(response).to have_http_status(:not_found)
      end      
    end
  end



  describe "HomeController#crawler?" do
    context "Crawler user agent" do

      before do
        controller.request.headers['User-Agent'] = "Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)"
      end

      it "should returns true" do
        expect(controller.send :crawler?).to eq true
      end      
    end

    context "Web browser user agent" do      
      before do
        controller.request.headers['User-Agent'] = "Some browser user agent"
      end

      it "should returns false" do
        expect(controller.send :crawler?).to eq false
      end
    end
  end

end
