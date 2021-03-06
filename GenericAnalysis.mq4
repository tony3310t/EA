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
   //getPriceOverZigZag();
   
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
   getRSIGreatherOrLessThanThreshold();
   getPriceOverZigZag();
   
  }
//+------------------------------------------------------------------+

void getRSIGreatherOrLessThanThreshold(){
   int total = SymbolsTotal(false);
   
   for(int i=0; i<total; i++){
      double rsi = iRSI(SymbolName(i, false),PERIOD_D1,14,PRICE_CLOSE,0);
      
      if(rsi == 0)
         continue;
      
      if(rsi > 65 || rsi < 35)
         Alert(SymbolName(i, false), " is ", rsi);
   }
}

void getPriceOverZigZag(){
   int total = SymbolsTotal(false);
   string MultiClose[] = {"USDCHF", "GBPUSD", "EURUSD", "USDJPY", "USDCAD", "AUDUSD", "EURGBP", "EURAUD", "EURCHF", "EURJPY", "GBPCHF", "CADJPY", "GBPJPY", "AUDNZD", "AUDCAD", "AUDCHF", "AUDJPY", "CHFJPY", "EURNZD", "CADCHF", "NZDJPY", "NZDUSD"};
   
   for(int i=0; i<ArraySize(MultiClose); i++){
      double firstZigZag = ZZPeak(MultiClose[i], 1);
      double secondZigZag = ZZPeak(MultiClose[i], 2);      
      
      double highZigZag;
      double lowZigZag;
      double PriceAsk = MarketInfo(MultiClose[i],MODE_ASK);
      double PriceBid = MarketInfo(MultiClose[i],MODE_BID);
      
      if(PriceAsk > firstZigZag) {
         highZigZag = secondZigZag;
         lowZigZag = firstZigZag;
      } else {
         highZigZag = firstZigZag;
         lowZigZag = secondZigZag;
      }
      
      if(PriceAsk >= highZigZag || PriceBid >= highZigZag){              
         Alert(MultiClose[i], "過前高");
      }
         
      if(PriceAsk <= lowZigZag || PriceBid <= lowZigZag)      
         Alert(MultiClose[i], "過前低");
   }
}

double ZZPeak(string a_symbol, int shift) {
   bool signal=false;
   double gd_result=0;
   double gd_peak[]; ArrayResize(gd_peak,shift+1); ArrayInitialize(gd_peak,0);
   int found=0; int c=0;
   
   while(found<shift+1){ 
      double zig=iCustom(a_symbol,0,"ZigZag",5,5,3,0,c);
      if(zig!=EMPTY_VALUE &&  zig!=0) { gd_peak[found] = zig; found++; }
      c++;
   }
   
   return(NormalizeDouble(gd_peak[shift],5));
}
