describe PagePolicy do

  describe '.edit?' do
    let(:user)
    let(:page) { create :page }
    subject { described_class.new(user, page)}

    context "with administrator" do

  end

  describe '.destroy?' do
    let(:user)
    let(:page)
  end
end
