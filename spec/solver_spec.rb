
RSpec.describe Solver do
  solve = Solver.new
  describe '#factorial' do
    context 'when input is 0' do
      it 'returns 1' do
        expect(solve.factorial(0)).to eq(1)
      end
    end

    context 'when input is a positive integer' do
      it 'calculates the factorial correctly' do
        expect(solve.factorial(5)).to eq(120) # 5! = 5 * 4 * 3 * 2 * 1 = 120
        expect(solve.factorial(10)).to eq(3_628_800) # 10! = 10 * 9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1 = 3628800
      end
    end

    context 'when input is a negative integer' do
      it 'raises an ArgumentError' do
        expect { solve.factorial(-5) }.to raise_error(ArgumentError)
      end
    end

    context 'when input is not an integer' do
      it 'raises an ArgumentError' do
        expect { solve.factorial('not_an_integer') }.to raise_error(ArgumentError)
      end
    end
  end

  describe '#reverse' do
  context 'when input is hello' do
    it 'returns olleh' do
      expect(solve.reverse('hello')).to eq('olleh')
    end
  end 
end

describe '#fizzbuzz' do
context 'when input is 6' do
  it 'returns fizz' do
    expect(solve.fizzbuzz(6)).to eq('fizz')
  end
end 

context 'when input is 10' do
  it 'returns buzz' do
    expect(solve.fizzbuzz(10)).to eq('buzz')
  end
end

context 'when input is 15' do
  it 'returns fizzbuzz' do
    expect(solve.fizzbuzz(15)).to eq('fizzbuzz')
  end
end

context 'when input is 7' do
  it 'returns 7' do
    expect(solve.fizzbuzz(7)).to eq('7')
  end
end

end
end
