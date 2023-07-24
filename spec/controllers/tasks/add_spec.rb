require 'rails_helper'

RSpec.describe 'TasksController' do
    describe "#add" do
        it "returns sum of two num" do
            task = TasksController.new
            expect(task.add(3,6)).to eql(9)
        end
    end
end