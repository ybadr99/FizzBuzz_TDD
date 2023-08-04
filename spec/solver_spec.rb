
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
end
