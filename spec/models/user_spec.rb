require 'spec_helper'

describe User do
  before(:each) do
    @user = FactoryGirl.create(:user)
    @project = FactoryGirl.create(:project , :initiator => @user)
    @project.users << @user
  end
  it "should as initiator one of project" do
    @project.initiator.should == @user
  end
  it "should as one of users on a project" do
    @project.users.where('id = ?', @user.id).last.should == @user
  end
  context "**complex association on project**" do
    before(:each) do
      @resource = FactoryGirl.create(:project_resource, :project => @project)
      @project_role = FactoryGirl.create(:project_role ,:name => "Project Manager", :project => @project)
      @project_role.users << @user
      @project_resource_role = FactoryGirl.create(:project_resource_role,
        :project_resource => @resource, 
      )
      @project_resource_role.project_roles <<  @project_role
      @user.reload
    end
    
    context "when as one of project roles" do
      it "should have at lest one role" do
        @user.project_roles.size.should >= 1
      end
      it "should have correct role as specified" do
        @user.project_roles.last.should == @project_role
      end
      context "when have a resources based on role" do
        it "should have at least one project resources" do
          @user.project_roles.last.project_resources.size.should >= 1
        end
        it "should have correct resource as specified" do
          @user.project_roles.last.project_resources.last.should == @resource
        end
      end
    end
    
  end
end
