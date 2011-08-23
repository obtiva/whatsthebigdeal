require 'spec_helper'

describe DealsController do

  def mock_deal(stubs={})
    @mock_deal ||= mock_model(Deal, stubs)
  end

  describe "GET index" do
    it "assigns all deals as @deals" do
      Deal.stub(:find).with(:all).and_return([mock_deal])
      get :index
      assigns[:deals].should == [mock_deal]
    end
  end

  describe "GET show" do
    it "assigns the requested deal as @deal" do
      Deal.stub(:find).with("37").and_return(mock_deal)
      get :show, :id => "37"
      assigns[:deal].should equal(mock_deal)
    end
  end

  describe "GET new" do
    it "assigns a new deal as @deal" do
      Deal.stub(:new).and_return(mock_deal)
      get :new
      assigns[:deal].should equal(mock_deal)
    end
  end

  describe "GET edit" do
    it "assigns the requested deal as @deal" do
      Deal.stub(:find).with("37").and_return(mock_deal)
      get :edit, :id => "37"
      assigns[:deal].should equal(mock_deal)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created deal as @deal" do
        Deal.stub(:new).with({'these' => 'params'}).and_return(mock_deal(:save => true))
        post :create, :deal => {:these => 'params'}
        assigns[:deal].should equal(mock_deal)
      end

      it "redirects to the created deal" do
        Deal.stub(:new).and_return(mock_deal(:save => true))
        post :create, :deal => {}
        response.should redirect_to(deal_url(mock_deal))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved deal as @deal" do
        Deal.stub(:new).with({'these' => 'params'}).and_return(mock_deal(:save => false))
        post :create, :deal => {:these => 'params'}
        assigns[:deal].should equal(mock_deal)
      end

      it "re-renders the 'new' template" do
        Deal.stub(:new).and_return(mock_deal(:save => false))
        post :create, :deal => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested deal" do
        Deal.should_receive(:find).with("37").and_return(mock_deal)
        mock_deal.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :deal => {:these => 'params'}
      end

      it "assigns the requested deal as @deal" do
        Deal.stub(:find).and_return(mock_deal(:update_attributes => true))
        put :update, :id => "1"
        assigns[:deal].should equal(mock_deal)
      end

      it "redirects to the deal" do
        Deal.stub(:find).and_return(mock_deal(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(deal_url(mock_deal))
      end
    end

    describe "with invalid params" do
      it "updates the requested deal" do
        Deal.should_receive(:find).with("37").and_return(mock_deal)
        mock_deal.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :deal => {:these => 'params'}
      end

      it "assigns the deal as @deal" do
        Deal.stub(:find).and_return(mock_deal(:update_attributes => false))
        put :update, :id => "1"
        assigns[:deal].should equal(mock_deal)
      end

      it "re-renders the 'edit' template" do
        Deal.stub(:find).and_return(mock_deal(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested deal" do
      Deal.should_receive(:find).with("37").and_return(mock_deal)
      mock_deal.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the deals list" do
      Deal.stub(:find).and_return(mock_deal(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(deals_url)
    end
  end

end
