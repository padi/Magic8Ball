# a RubyMotion Model can be a PORO
# Magic8Ball
#   - has 4 answers
#   - generates a random answer

class Magic8Ball
  attr_reader :answers

  def initialize
    @answers = defaultAnswers
  end

  def randomAnswer
    @answers.sample
  end

private

  def defaultAnswers
    [
      'Yes',
      'No',
      'Maybe',
      'Try Again',
    ]
  end
end

  # def loadAnswers
  #   answerFile = NSBundle.mainBundle.pathForResource('answers', ofType:'json')

  #   errorPointer = Pointer.new(:object)

  #   data = NSData.alloc.initWithContentsOfFile(answerFile,
  #                                              options:NSDataReadingUncached,
  #                                              error:errorPointer)
  #   unless data
  #     printError errorPointer[0]
  #     return defaultAnswers
  #   end

  #   # json = NSJSONSerialization.JSONObjectWithData(data,
  #   #                                               options:NSDataReadingUncached,
  #   #                                               error:errorPointer)
  #   unless json
  #     printError errorPointer[0]
  #     return defaultAnswers
  #   end

  #   json['answers']
  # end

  # def printError(error)
  #   $stderr.puts "Error: #{error.description}"
  # end
# end