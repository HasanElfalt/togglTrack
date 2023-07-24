require 'rails_helper'

# frozen_string_literal: true

RSpec.describe Project do
    subject {described_class.new(user: User.new)}
    describe "validation" do
        describe "project_name" do
            it "must_be_presence" do
                #project = Project.new(user: User.new)
                expect(subject).to_not be_valid
                subject.name = 'Ruby'
                expect(subject).to be_valid
            end
        end
        describe "project_user" do
            it "must_be_presence" do
                project = Project.new(name: "Ruby")
                expect(project).to_not be_valid
                project.user = User.new
                expect(project).to be_valid
            end
        end
    end
end
