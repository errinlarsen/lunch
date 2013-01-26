require "spec_helper"

describe Restaurant do
  it { should respond_to :name }
  it { should respond_to :entries }
  it { should respond_to :users }
end
