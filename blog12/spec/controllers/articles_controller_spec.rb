require 'rails_helper'
RSpec.describe ArticlesController, type: :controller do
     describe 'GET #index' do
       before { get :index}
       it { expect(response).to have_http_status :ok }
       it {is_expected.to render_template :index}
     end
     describe 'GET #show' do
       article = FactoryGirl.create(:article)
       subject {get :show, params: {id: article.id}}
       it {is_expected.to have_http_status(200)}
       it {is_expected.to render_template :show}
     end

end

