package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1008:SoundChannel = null;
      
      private var var_846:Boolean;
      
      private var var_1009:Sound = null;
      
      private var var_651:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_1009 = param1;
         var_1009.addEventListener(Event.COMPLETE,onComplete);
         var_651 = 1;
         var_846 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_846;
      }
      
      public function stop() : Boolean
      {
         var_1008.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_846 = false;
         var_1008 = var_1009.play(0);
         this.volume = var_651;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_651;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_1008.position;
      }
      
      public function get length() : Number
      {
         return var_1009.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_651 = param1;
         if(var_1008 != null)
         {
            var_1008.soundTransform = new SoundTransform(var_651);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_846 = true;
      }
   }
}
