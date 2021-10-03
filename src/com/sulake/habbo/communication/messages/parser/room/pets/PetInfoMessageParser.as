package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1740:int;
      
      private var var_402:String;
      
      private var var_1739:int;
      
      private var var_1694:int;
      
      private var var_1743:int;
      
      private var var_2203:int;
      
      private var _nutrition:int;
      
      private var var_1186:int;
      
      private var var_2206:int;
      
      private var var_2205:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1742:int;
      
      private var var_2204:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1739;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_2203;
      }
      
      public function flush() : Boolean
      {
         var_1186 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_2206;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_2205;
      }
      
      public function get maxNutrition() : int
      {
         return var_2204;
      }
      
      public function get figure() : String
      {
         return var_402;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1694;
      }
      
      public function get petId() : int
      {
         return var_1186;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1186 = param1.readInteger();
         _name = param1.readString();
         var_1739 = param1.readInteger();
         var_2206 = param1.readInteger();
         var_1743 = param1.readInteger();
         var_2205 = param1.readInteger();
         _energy = param1.readInteger();
         var_2203 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_2204 = param1.readInteger();
         var_402 = param1.readString();
         var_1694 = param1.readInteger();
         var_1742 = param1.readInteger();
         var_1740 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1743;
      }
      
      public function get ownerId() : int
      {
         return var_1742;
      }
      
      public function get age() : int
      {
         return var_1740;
      }
   }
}
