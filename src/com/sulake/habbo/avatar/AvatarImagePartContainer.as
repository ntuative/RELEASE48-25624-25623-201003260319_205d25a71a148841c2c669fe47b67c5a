package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_1975:int;
      
      private var var_1977:String;
      
      private var var_1500:IActionDefinition;
      
      private var var_1976:Boolean;
      
      private var _color:IPartColor;
      
      private var var_1979:String;
      
      private var var_1974:String;
      
      private var var_1728:Boolean;
      
      private var var_1978:ColorTransform;
      
      private var var_1646:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_1977 = param1;
         var_1979 = param2;
         var_1975 = param3;
         _color = param4;
         _frames = param5;
         var_1500 = param6;
         var_1728 = param7;
         var_1646 = param8;
         var_1974 = param9;
         var_1976 = param10;
         var_1978 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1728;
      }
      
      public function get partType() : String
      {
         return var_1979;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1646;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_1976;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_1975;
      }
      
      public function get flippedPartType() : String
      {
         return var_1974;
      }
      
      public function get bodyPartId() : String
      {
         return var_1977;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1500;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_1978;
      }
   }
}
