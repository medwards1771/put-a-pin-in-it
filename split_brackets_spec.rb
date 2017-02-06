require 'rspec'
require_relative 'split_brackets'

describe SplitBrackets do
  let(:split_bracket) { SplitBrackets.new }

  describe "#solution" do
    subject { split_bracket.solution(string) }

    context "case the first" do
      let(:string) { '(())' }
      it { is_expected.to eq(2) }
    end

    context "case the second" do
      let(:string) { '(())))(' }
      it { is_expected.to eq(4) }
    end

    context "case the third" do
      let(:string) { '))' }
      it { is_expected.to eq(2) }
    end

    context "case the fourth" do
      let(:string) { '(()))' }
      it { is_expected.to eq(3) }
    end

    context "case the fifth" do
      let(:string) { '' }
      it { is_expected.to eq(0) }
    end
  end
end
