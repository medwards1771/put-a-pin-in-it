require 'rspec'
require_relative 'split_brackets'

describe SplitBrackets do
  let(:split_bracket) { SplitBrackets.new(string) }

  describe "#method" do
    subject { split_bracket.method }

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
  end
end
