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
input double line1 = 0;
input double line2 = 0;
input double line3 = 0;
input double line4 = 0;
input double line5 = 0;
int OnInit()
{
  //---
  if (line1 != 0)
  {
    ObjectCreate("line1", OBJ_HLINE, 0, Time[0], line1, 0, 0);
    ObjectSetInteger("line1", OBJ_HLINE, OBJPROP_COLOR, clrYellow);
  }
  if (line2 != 0)
    ObjectCreate("line2", OBJ_HLINE, 0, Time[0], line2, 0, 0);
  if (line3 != 0)
    ObjectCreate("line3", OBJ_HLINE, 0, Time[0], line3, 0, 0);
  if (line4 != 0)
    ObjectCreate("line4", OBJ_HLINE, 0, Time[0], line4, 0, 0);
  if (line5 != 0)
    ObjectCreate("line5", OBJ_HLINE, 0, Time[0], line5, 0, 0);
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
