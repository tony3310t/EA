//+------------------------------------------------------------------+
//|                                                 CalcSequence.mq4 |
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
input double Lots = 0.2;
input double Append = 300;
input int AppendCount = 3;
int OnInit()
{
    //---
    double count = 0;
    
    for(int i=0; i<=AppendCount; i++){
      double tmpLot = Lots + (Lots*i);
      double tmpLoss = tmpLot*((AppendCount+1-i)*Append);
      count += tmpLoss;
    }
    
    Alert(count);
    //---
    return (INIT_SUCCEEDED);
}
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---
   
  }
//+------------------------------------------------------------------+
