# Magic8BallViewController
#   - has a background image
#   - has a label
#   - has a single-tap gesture recognizer
#   - updates the label when the answer is shown

class Magic8BallViewController < UIViewController
  attr_reader :label

  def loadView
    self.view = UIImageView.alloc.init
  end

  def viewDidLoad
    view.image = UIImage.imageNamed('background.png')

    @label = makeLabel
    view.addSubview(@label)

    view.userInteractionEnabled = true
    tap = UITapGestureRecognizer.alloc.initWithTarget(self, action:'showAnswer')
    view.addGestureRecognizer(tap)

    @eightBall = Magic8Ball.new
  end

  def makeLabel
    label = UILabel.alloc.initWithFrame([[10,60], [300,80]])
    label.backgroundColor = UIColor.lightGrayColor
    label.text = "Tap For Answer!"
    label.font = UIFont.boldSystemFontOfSize(34)
    label.textColor = UIColor.darkGrayColor
    label.textAlignment = UITextAlignmentCenter
    label
  end

  def showAnswer
    @label.text = @eightBall.randomAnswer
  end
    # UIView.animateWithDuration(1.0,
    #   animations:lambda {
    #     @label.alpha = 0
    #     @label.transform = CGAffineTransformMakeScale(0.1, 0.1)
    #   },
    #   completion:lambda { |finished|
    #     @label.text = @eightBall.randomAnswer
    #     UIView.animateWithDuration(1.0,
    #       animations:lambda {
    #           @label.alpha = 1
    #           @label.transform = CGAffineTransformIdentity
    #       })
    #   }
    # )
  # end

end