package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1739:int;
      
      private var var_1743:int;
      
      private var var_1733:int;
      
      private var _type:int;
      
      private var var_1186:int = -1;
      
      private var var_1737:int;
      
      private var _nutrition:int;
      
      private var var_1736:int;
      
      private var _energy:int;
      
      private var var_1735:int;
      
      private var var_1741:int;
      
      private var var_1734:int;
      
      private var var_1740:int;
      
      private var _petRespect:int;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_1738:Boolean;
      
      private var _name:String = "";
      
      private var var_1742:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_1738;
      }
      
      public function get level() : int
      {
         return var_1739;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get experienceMax() : int
      {
         return var_1736;
      }
      
      public function get id() : int
      {
         return var_1186;
      }
      
      public function get nutritionMax() : int
      {
         return var_1733;
      }
      
      public function get ownerId() : int
      {
         return var_1742;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         _name = param1.name;
         var_1186 = param1.id;
         _type = param1.petType;
         var_1735 = param1.petRace;
         _image = param1.image;
         var_1738 = param1.isOwnPet;
         var_1742 = param1.ownerId;
         _ownerName = param1.ownerName;
         _canOwnerBeKicked = param1.canOwnerBeKicked;
         var_1739 = param1.level;
         var_1737 = param1.levelMax;
         var_1743 = param1.experience;
         var_1736 = param1.experienceMax;
         _energy = param1.energy;
         var_1741 = param1.energyMax;
         _nutrition = param1.nutrition;
         var_1733 = param1.nutritionMax;
         _petRespect = param1.petRespect;
         var_1734 = param1.method_4;
         var_1740 = param1.age;
      }
      
      public function get method_4() : int
      {
         return var_1734;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get energyMax() : int
      {
         return var_1741;
      }
      
      public function get levelMax() : int
      {
         return var_1737;
      }
      
      public function get petRespect() : int
      {
         return _petRespect;
      }
      
      public function get race() : int
      {
         return var_1735;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return _canOwnerBeKicked;
      }
      
      public function get experience() : int
      {
         return var_1743;
      }
      
      public function get age() : int
      {
         return var_1740;
      }
   }
}
