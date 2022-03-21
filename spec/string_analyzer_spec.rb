class StringAnalyzer
    def has_vowels?(str)
        !!(str =~ /[aeio]+/i)
    end
end


describe StringAnalyzer do

    it "should detect when a string contains vowels (one vowel case)" do
        s1 = StringAnalyzer.new()
        expect(s1.has_vowels?("iii")).to be true
    end

    it "should detect when a string contains vowels (vowels and constants case)" do
        s1 = StringAnalyzer.new()
        expect(s1.has_vowels?("abcefg")).to be true
    end

    it "should detect when a string contains vowels (only constants case)" do
        s1 = StringAnalyzer.new()
        expect(s1.has_vowels?("kfc")).to be false
    end

    it "should detect when a string contains vowels (empty string)" do
        s1 = StringAnalyzer.new()
        expect(s1.has_vowels?("")).to be false
    end

    it "should detect when a string contains vowels (vowels, constants, numbers, and punctuations case)" do
        s1 = StringAnalyzer.new()
        expect(s1.has_vowels?("abcde1234&??")).to be true
    end

    it "should detect when a string contains vowels (numbers and punctuations only case)" do
        s1 = StringAnalyzer.new()
        expect(s1.has_vowels?("1234@")).to be false
    end

    it "should detect when a string contains vowels (upper case vowels case)" do
        s1 = StringAnalyzer.new()
        expect(s1.has_vowels?("AUEIOU")).to be true
    end

    it "should detect when a string contains vowels (upper case and lower case vowels only case)" do
        s1 = StringAnalyzer.new()
        expect(s1.has_vowels?("AoIuE")).to be true
    end

    it "should detect when a string contains vowels (upper case and lower case vowels and constants case)" do
        s1 = StringAnalyzer.new()
        expect(s1.has_vowels?("AbCde")).to be true
    end

    it "should detect when a string contains vowels (upper case constants only case)" do
        s1 = StringAnalyzer.new()
        expect(s1.has_vowels?("BCDFG")).to be false
    end

    it "should detect when a string contains vowels (whitespace only case)" do
        s1 = StringAnalyzer.new()
        expect(s1.has_vowels?(" ")).to be false
    end
end