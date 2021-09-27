import Foundation

//reate a class called Animal
class Animal {

    var AnimalName : String
    var Health : Int 

    init(AnimalName : String , Health : Int = 100 ) {  
            self.AnimalName = AnimalName 
            self.Health = Health
    }

    func displayHealth() {

        print(self.Health)
    }
}

//create a subclass of Animal called Cat
class Cat :Animal{

    init(AnimalName : String) {  
           
        super.init(AnimalName:AnimalName) 
        Health = 150     
    }

    func growl() {
        
        print("Rawr!")
    }

    func run() { 
        
        print("Running")
        self.Health -= 10
    }
}

//create two subclasses of Cat - Cheetah
class Cheetah : Cat{

    override init(AnimalName: String) {

        super.init(AnimalName:AnimalName) 
        Health = 200
    }

    override func run(){

        print("Running Fast")
        self.Health -= 50
    }

    func sleep(){

        self.Health += 50
        if self.Health > 200{
            self.Health = 200
        }
    }
}

//create two subclasses of Cat - Lion
class Lion:Cat{

    override init( AnimalName : String) {  
        super.init(AnimalName:AnimalName) 
        Health = 200
    }

    override func growl() {

        print("ROAR!!! I am the King of the Jungle")
    }
}

var ch = Cheetah(AnimalName:"Xiaofei")
ch.run()
ch.run()
ch.run()
ch.run()
ch.displayHealth()

var li = Lion(AnimalName:"Huanying")
li.run()
li.run()
li.run()
li.growl()
li.displayHealth()
