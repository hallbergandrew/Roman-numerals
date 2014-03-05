require('Roman_numerals')
require('rspec')

describe('Roman') do
  it('returns roman numeral I for 1') do
    Roman(1).should(eq('I'))
  end
  it('returns roman numeral V for 5') do
    Roman(5).should(eq('V'))
  end
  it('returns any single roman numeral for the single digit equivalent') do
    Roman(1000).should(eq('M'))
  end
  it('return roman numeral II for the number 2') do
    Roman(2).should(eq('II'))
  end
  it('returns roman numeral IV for the number 4') do
    Roman(4).should(eq('IV'))
  end
  it('returns roman number IX for the number 9') do
    Roman(9).should(eq('IX'))
  end
  it('returns roman number MMMCMXCIX') do
    Roman(3999).should(eq('MMMCMXCIX'))
  end
end
