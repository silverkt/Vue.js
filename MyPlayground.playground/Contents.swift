public class Persion {
    var name:String = ""
    var height:Int = 0
    init()
    {
      self.name = "silver"
    }
    
    public func run()->Void
    {
        print(self.name)
    }
    
}

var p = Persion()
print(p);


public class Student : Persion {
    
    override public func run()->Void
    {
        super.height = 32
        print(self.height)
    }
}

p = Student()
p.run()
