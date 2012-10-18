describe "Magic8Ball" do
  before do
    @eightBall = Magic8Ball.new
  end

  it "has 4 answers" do
    @eightBall.answers.size.should.equal 4
  end

  it "generates a random answer" do
    answer = @eightBall.randomAnswer

    @eightBall.answers.should.include answer
  end
end