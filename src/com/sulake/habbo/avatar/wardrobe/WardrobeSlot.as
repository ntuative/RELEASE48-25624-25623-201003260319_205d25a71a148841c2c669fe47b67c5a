package com.sulake.habbo.avatar.wardrobe
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.avatar.HabboAvatarEditor;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IOutfit;
   import com.sulake.habbo.avatar.enum.AvatarScaleType;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.avatar.figuredata.FigureData;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   
   public class WardrobeSlot implements IOutfit
   {
       
      
      private var var_402:String;
      
      private var _view:IWindowContainer;
      
      private var var_298:IBitmapWrapperWindow;
      
      private var var_1451:int;
      
      private var var_675:String;
      
      private var var_1180:Boolean;
      
      private var var_47:HabboAvatarEditor;
      
      public function WardrobeSlot(param1:HabboAvatarEditor, param2:int, param3:Boolean, param4:String = null, param5:String = null)
      {
         super();
         var_47 = param1;
         var_1451 = param2;
         createView();
         update(param4,param5,param3);
      }
      
      private function createView() : void
      {
         var _loc1_:XmlAsset = var_47.assets.getAssetByName("wardrobe_slot") as XmlAsset;
         if(!_loc1_)
         {
            return;
         }
         _view = var_47.windowManager.buildFromXML(_loc1_.content as XML) as IWindowContainer;
         _view.procedure = eventHandler;
         _view.visible = false;
         var_298 = _view.findChildByName("image") as IBitmapWrapperWindow;
      }
      
      public function update(param1:String, param2:String, param3:Boolean) : void
      {
         switch(param2)
         {
            case FigureData.const_76:
            case "m":
            case "M":
               param2 = "null";
               break;
            case FigureData.const_87:
            case "f":
            case "F":
               param2 = "null";
         }
         var_402 = param1;
         var_675 = param2;
         var_1180 = param3;
         updateView();
      }
      
      public function updateView() : void
      {
         var _loc1_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc2_:Boolean = true;
         if(var_402 && var_1180)
         {
            _loc5_ = var_47.avatarRenderManager.createAvatarImage(figure,AvatarScaleType.const_95);
            _loc5_.setDirection(AvatarSetType.const_37,parseInt(FigureData.const_740));
            _loc1_ = _loc5_.getCroppedImage(AvatarSetType.const_37);
         }
         else
         {
            _loc6_ = var_47.assets.getAssetByName("wardrobe_empty_slot") as BitmapDataAsset;
            if(_loc6_)
            {
               _loc1_ = _loc6_.content as BitmapData;
               _loc2_ = false;
            }
         }
         if(!_loc1_)
         {
            return;
         }
         if(var_298)
         {
            if(false)
            {
               var_298.bitmap.dispose();
            }
            var_298.bitmap = new BitmapData(var_298.width,var_298.height,true,0);
            _loc7_ = (0 - _loc1_.width) / 2;
            _loc8_ = (0 - _loc1_.height) / 2;
            var_298.bitmap.draw(_loc1_,new Matrix(1,0,0,1,_loc7_,_loc8_));
         }
         if(_loc2_)
         {
            _loc1_.dispose();
         }
         var _loc3_:IContainerButtonWindow = _view.findChildByName("set_button") as IContainerButtonWindow;
         if(_loc3_)
         {
            _loc3_.visible = var_1180;
         }
         var _loc4_:IContainerButtonWindow = _view.findChildByName("get_button") as IContainerButtonWindow;
         if(_loc4_)
         {
            _loc4_.visible = var_1180 && var_402 != null;
         }
      }
      
      public function get gender() : String
      {
         return var_675;
      }
      
      public function get id() : int
      {
         return var_1451;
      }
      
      public function dispose() : void
      {
         var_47 = null;
         var_402 = null;
         var_675 = null;
         var_298 = null;
         if(_view)
         {
            _view.dispose();
            _view = null;
         }
      }
      
      public function get figure() : String
      {
         return var_402;
      }
      
      public function get view() : IWindowContainer
      {
         return _view;
      }
      
      private function eventHandler(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         switch(param2.name)
         {
            case "set_button":
               var_402 = var_47.figureData.getFigureString();
               var_675 = var_47.gender;
               var_47.handler.saveWardrobeOutfit(var_1451,this);
               updateView();
               break;
            case "get_button":
               if(var_402)
               {
                  var_47.loadAvatarInEditor(var_402,var_675,var_47.clubMemberLevel);
               }
         }
      }
   }
}
