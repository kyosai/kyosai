require 'spec_helper'
describe Res::TodoList do
  context ".new" do
    before :each do
      @todo = FactoryGirl.create(:res_todo_list)
      @todo.histories << Res::History.new(:action => 'create')
      @todo.comments << Res::Comment.new(:message => 'Holla')
    end
    it "should respond to histories" do
      @todo.respond_to?(:histories).should be_true
    end
    it "should respond to comments" do
      @todo.respond_to?(:comments).should be_true
    end
    context "when adding history" do
      it "should have one history" do
        @todo.histories.size.should == 1
      end
    end
  end
end
