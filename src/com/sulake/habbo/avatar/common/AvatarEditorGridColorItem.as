package com.sulake.habbo.avatar.common
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class AvatarEditorGridColorItem
   {
       
      
      private var var_798:BitmapData;
      
      private var _isSelected:Boolean = false;
      
      private var var_980:BitmapData;
      
      private var _window:IWindowContainer;
      
      private var var_981:BitmapData;
      
      private var _model:IAvatarEditorCategoryModel;
      
      private var var_663:BitmapData;
      
      private var var_668:IPartColor;
      
      private var var_667:BitmapData;
      
      public function AvatarEditorGridColorItem(param1:IWindowContainer, param2:IAvatarEditorCategoryModel, param3:IPartColor)
      {
         super();
         _model = param2;
         _window = param1;
         _window.background = true;
         var_668 = param3;
         var _loc4_:BitmapDataAsset = param2.controller.assets.getAssetByName("editor_clr_40x32_1") as BitmapDataAsset;
         var_663 = _loc4_.content as BitmapData;
         var _loc5_:BitmapDataAsset = param2.controller.assets.getAssetByName("editor_clr_40x32_2") as BitmapDataAsset;
         var_798 = _loc5_.content as BitmapData;
         var _loc6_:BitmapDataAsset = param2.controller.assets.getAssetByName("editor_clr_40x32_3") as BitmapDataAsset;
         var_667 = _loc6_.content as BitmapData;
         var _loc7_:BitmapDataAsset = param2.controller.assets.getAssetByName("habbo_club_icon") as BitmapDataAsset;
         var_980 = _loc7_.content as BitmapData;
         var _loc8_:BitmapDataAsset = param2.controller.assets.getAssetByName("habbo_vip_icon") as BitmapDataAsset;
         var_981 = _loc8_.content as BitmapData;
         updateThumbData();
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
         updateThumbData();
      }
      
      private function updateThumbData() : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         if(_window == null)
         {
            return;
         }
         if(false)
         {
            return;
         }
         var _loc1_:IBitmapWrapperWindow = _window.findChildByTag("BG_BORDER") as IBitmapWrapperWindow;
         if(_loc1_ != null)
         {
            _loc1_.bitmap = new BitmapData(var_663.width,var_663.height,true,0);
            _loc1_.bitmap.copyPixels(var_663,var_663.rect,new Point(0,0));
         }
         var _loc2_:IBitmapWrapperWindow = _window.findChildByTag("COLOR_IMAGE") as IBitmapWrapperWindow;
         if(_loc2_ != null)
         {
            _loc2_.bitmap = new BitmapData(var_798.width,var_798.height,true,0);
            _loc4_ = var_798.clone();
            _loc4_.colorTransform(_loc4_.rect,var_668.colorTransform);
            _loc2_.bitmap.copyPixels(_loc4_,_loc4_.rect,new Point(0,0));
         }
         var _loc3_:IBitmapWrapperWindow = _window.findChildByTag("COLOR_CHOSEN") as IBitmapWrapperWindow;
         if(_loc3_ != null)
         {
            if(_isSelected)
            {
               _loc3_.bitmap = new BitmapData(var_667.width,var_667.height,true,16777215);
               _loc3_.bitmap.copyPixels(var_667,var_667.rect,new Point(0,0),null,null,true);
               _loc3_.visible = true;
            }
            else
            {
               _loc3_.visible = false;
            }
         }
         if(false)
         {
            _loc5_ = _window.findChildByTag("CLUB_ICON") as IBitmapWrapperWindow;
            if(_loc5_ != null)
            {
               _loc5_.bitmap = new BitmapData(_loc5_.width,_loc5_.height,true,16777215);
               if(false)
               {
                  _loc5_.bitmap.copyPixels(var_980,var_980.rect,new Point(0,0),null,null,true);
               }
               else
               {
                  _loc5_.bitmap.copyPixels(var_981,var_981.rect,new Point(0,0),null,null,true);
               }
            }
         }
      }
      
      public function dispose() : void
      {
         _model = null;
         if(_window != null)
         {
            if(true)
            {
               _window.dispose();
            }
         }
         _window = null;
         var_668 = null;
         var_663 = null;
         var_798 = null;
         var_667 = null;
         var_980 = null;
         var_981 = null;
      }
      
      public function get view() : IWindowContainer
      {
         return _window;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get partColor() : IPartColor
      {
         return var_668;
      }
   }
}
