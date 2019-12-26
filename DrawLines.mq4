//+------------------------------------------------------------------+
//|                                                    DrawLines.mq4 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link "https://www.mql5.com"
#property version "1.00"
#property strict
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
input string line1Comment = "line1";
input double line1 = 0;
input string line2Comment = "line2";
input double line2 = 0;
input string line3Comment = "line3";
input double line3 = 0;
input string line4Comment = "line4";
input double line4 = 0;
input string line5Comment = "line5";
input double line5 = 0;
int OnInit()
{
  //---
  if (line1 != 0)
  {
    ObjectCreate(line1Comment, OBJ_HLINE, 0, Time[0], line1, 0, 0);
  }
  if (line2 != 0)
    ObjectCreate(line2Comment, OBJ_HLINE, 0, Time[0], line2, 0, 0);
  if (line3 != 0)
    ObjectCreate(line3Comment, OBJ_HLINE, 0, Time[0], line3, 0, 0);
  if (line4 != 0)
    ObjectCreate(line4Comment, OBJ_HLINE, 0, Time[0], line4, 0, 0);
  if (line5 != 0)
    ObjectCreate(line5Comment, OBJ_HLINE, 0, Time[0], line5, 0, 0);
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
