//+------------------------------------------------------------------+
//|                                              GenericAnalysis.mq4 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- create timer
   EventSetTimer(300);
   //SendNotification("RSI, " + iRSI("EURUSD",PERIOD_D1,14,PRICE_CLOSE,0));
   double ZigZagHigh=iCustom(NULL,0,"ZigZag",12,5,3,0,0);Alert("ZigZag ", ZigZagHigh);
   double zz_h_0 =iCustom (NULL,0,"ZigZag", 12,5,3, 1,0);Alert("zz_h_0 ", zz_h_0);
   double zz_h_1 =iCustom (NULL,0,"ZigZag", 12,5,3, 1,1);Alert("zz_h_1 ", zz_h_1);
   double zz_h_2 =iCustom (NULL,0,"ZigZag", 12,5,3, 1,2);Alert("zz_h_2 ", zz_h_2);

   double zz_l_0 =iCustom (NULL,0,"ZigZag", 12,5,3, 2,0);Alert("zz_l_0 ", zz_l_0);
   double zz_l_1 =iCustom (NULL,0,"ZigZag", 12,5,3, 2,1);Alert("zz_l_1 ", zz_l_1);
   double zz_l_2 =iCustom (NULL,0,"ZigZag", 12,5,3, 2,2);Alert("zz_l_2 ", zz_l_2);
   //Alert(Bars);
   for ( int x=0; x<5; x++ )
   {
      
      Alert("x ", ZZPeak(NULL, x));
   }
   
   //double ZigZagLow=iCustom(NULL,0,"ZigZag",MODE_LOW,0);
   
   //Alert("Total ", SymbolsTotal(false));
   //Alert("Name ", SymbolName(0, false));
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//--- destroy timer
   EventKillTimer();
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---
   //if(iRSI(NULL,PERIOD_D1,14,PRICE_CLOSE,0)>iRSI(NULL,0,14,PRICE_CLOSE,1))
   //Alert("RSI, ", iRSI(NULL,PERIOD_D1,14,PRICE_CLOSE,0));
  }
//+------------------------------------------------------------------+
//| Timer function                                                   |
//+------------------------------------------------------------------+
void OnTimer()
  {
//---
   int total = SymbolsTotal(false);
   
   for(int i=0; i<total; i++){
      double rsi = iRSI(SymbolName(i, false),PERIOD_D1,14,PRICE_CLOSE,0);
      
      if(rsi == 0)
         continue;
      
      if(rsi > 65 || rsi < 35)
         Alert(SymbolName(i, false), " is ", rsi);
   }
  }
//+------------------------------------------------------------------+

double ZZPeak(string a_symbol, int shift) {
   bool signal=false;
   double gd_result=0;
   double gd_peak[]; ArrayResize(gd_peak,shift+1); ArrayInitialize(gd_peak,0);
      int found=0; int c=0;
      while(found<shift+1){ 
         double zig=iCustom(a_symbol,0,"ZigZag",12,5,6,0,c);
         if(zig!=EMPTY_VALUE &&  zig!=0) { gd_peak[found] = zig; found++; }
         c++;
      }
return(NormalizeDouble(gd_peak[shift],5));
}
