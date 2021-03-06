require File.dirname(__FILE__) + '/../../spec_helper'

describe Mustang::V8 do
  it "responds to .version" do
    subject.should respond_to(:version)
    subject.version.should =~ /^\d.\d.\d$/
  end

  it "responds to .dead?" do
    subject.should respond_to(:dead?)
    subject.should_not be_dead
  end

  it "responds to .alive?" do
    subject.should respond_to(:alive?)
    subject.should be_alive
  end

  describe ".debugger!" do
    it "starts debugger on given port" do
      subject.debugger!(3001).should be_true
      # TODO: more accurate examples?
    end

    it "is aliased with .debug!" do
      subject.debug!(3001).should be_true
    end
  end
end
