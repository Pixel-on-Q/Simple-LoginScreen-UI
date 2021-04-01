void main(){
//Animal().move();
Duck().animal();
Duck().Fly();
Duck().Swim();
Duck().end();
}

class Animal{
  void animal(){
    print('DUCK can');
  }
}

mixin CanFly{
  void Fly(){
    print('1. change position by flying');
  }
}
mixin CanSwim{
   void Swim(){
     print('2. changes position by Swimmin');
   }
}

class Duck extends Animal with CanFly,CanSwim{
void end(){
  print('end of process(\'mixins are just like adding new sills to humans, here classes');
}
}

