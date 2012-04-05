require 'spec_helper'

module Deface
  describe TemplateHelper do
    include_context "mock Rails.application"
    include Deface::TemplateHelper

    describe "load_template_source" do
      before do
        #stub view paths to be local spec/assets directory
        ActionController::Base.stub(:view_paths).and_return([File.join(File.dirname(__FILE__), '..', "assets")])
      end

      describe "with no overrides defined" do
        it "should return source for partial" do
          load_template_source("shared/post", true).should == "<p>I'm from shared/post partial</p>\n<%= \"And I've got ERB\" %>\n"
        end

        it "should return source for template" do
          load_template_source("shared/person", false).should == "<p>I'm from shared/person template</p>\n<%= \"I've got ERB too\" %>\n"
        end

        it "should return source for namespaced template" do
          load_template_source("admin/posts/index", false).should == "<h1>Manage Posts</h1>\n"
        end

        it "should raise exception for non-existing file" do
          lambda { load_template_source("tester/post", true) }.should raise_error(ActionView::MissingTemplate)
        end

      end

      describe "with overrides defined" do
        include_context "mock Rails.application"

        before(:each) do
          Deface::Override.new(:virtual_path => "shared/_post", :name => "shared#post", :remove => "p")
          Deface::Override.new(:virtual_path => "shared/person", :name => "shared#person", :replace => "p", :text => "<h1>Argh!</h1>")
          Deface::Override.new(:virtual_path => "admin/posts/index", :name => "admin#posts#index", :replace => "h1", :text => "<h1>Argh!</h1>")
        end

        it "should return source for partial including overrides" do
          load_template_source("shared/post", true).should == "\n<%= \"And I've got ERB\" %>"
        end

        it "should return source for partial excluding overrides" do
          load_template_source("shared/post", true, false).should == "<p>I'm from shared/post partial</p>\n<%= \"And I've got ERB\" %>\n"
        end

        it "should return source for template including overrides" do
          load_template_source("shared/person", false).should == "<h1>Argh!</h1>\n<%= \"I've got ERB too\" %>"
        end

        it "should return source for namespaced template including overrides" do
          load_template_source("admin/posts/index", false).should == "<h1>Argh!</h1>"
        end

      end

    end
  end
end
