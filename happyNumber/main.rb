# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  # Memo: 「各桁を累乗の和」の中で計算するを1桁にたどり着くはず(という前提。証明はしていない)
  # そのとき、HappyNumberになりうるのは「1 or 7」の２つのみ
  # そのため計算結果が1桁になるまで計算を繰り返し、その時に1,7のいずれかであればHappyNumberである
  # 一方、計算結果が1桁になった時に、1と7以外の場合はそれ以降計算しても絶対にHappyNumberにならないのでループを抜けfalseを返す
  current = n
  while(current.size != 1)
    current = current.to_s.chars.map(&:to_i).inject(0) { |r, i| r + i ** 2 }.to_s
    return true if ['1', '7'].include?(current)
  end
  false
end

puts is_happy(1111111)
