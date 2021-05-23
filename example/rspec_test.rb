class TestClass
  def two_plus_two
    2 + 2
  end
end

describe TestClass do
  context 'When adding 2 plus 2' do
    it 'Should be equal to 4' do
      cl = TestClass.new
      expect(cl.two_plus_two).to eq 4
    end
  end
end