package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_506:int = 6;
      
      public static const const_202:int = 5;
      
      public static const const_648:int = 2;
      
      public static const const_295:int = 9;
      
      public static const const_286:int = 4;
      
      public static const const_236:int = 2;
      
      public static const const_612:int = 4;
      
      public static const const_214:int = 8;
      
      public static const const_741:int = 7;
      
      public static const const_263:int = 3;
      
      public static const const_317:int = 1;
      
      public static const const_207:int = 5;
      
      public static const const_407:int = 12;
      
      public static const const_282:int = 1;
      
      public static const const_530:int = 11;
      
      public static const const_680:int = 3;
      
      public static const const_1499:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_388:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_388 = new Array();
         var_388.push(new Tab(_navigator,const_317,const_407,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_400));
         var_388.push(new Tab(_navigator,const_236,const_282,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_400));
         var_388.push(new Tab(_navigator,const_286,const_530,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_881));
         var_388.push(new Tab(_navigator,const_263,const_202,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_400));
         var_388.push(new Tab(_navigator,const_207,const_214,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_603));
         setSelectedTab(const_317);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_388)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_388)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_388)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_286;
      }
      
      public function get tabs() : Array
      {
         return var_388;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
