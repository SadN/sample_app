require 'spec_helper'

describe ApplicationHelper do
  describe "full title" do
    it "should include the page title" do
      expext(full_title("foo")).to match(/foo/)
    end

    it "should include the base title" do
      expect(full_title("foo")).to match(/^Green News App/)
    end

    it "should not include a bar for the homepage" do
      expect(full_title("")).not_to match(/\|/)
    end
  end
end


