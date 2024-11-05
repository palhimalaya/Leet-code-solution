def is_match(s, p)
  m, n = s.length, p.length
  dp = Array.new(m + 1) { Array.new(n + 1, false) }
  dp[0][0] = true

  (2..n).each do |j|
    dp[0][j] = dp[0][j - 2] if p[j - 1] == '*'
  end

  (1..m).each do |i|
    (1..n).each do |j|
      if p[j - 1] == '.' || p[j - 1] == s[i - 1]
        dp[i][j] = dp[i - 1][j - 1]
      elsif p[j - 1] == '*'
        dp[i][j] = dp[i][j - 2]
        if p[j - 2] == '.' || p[j - 2] == s[i - 1]
          dp[i][j] = dp[i][j] || dp[i - 1][j]
        end
      end
    end
  end

  dp[m][n]
end
