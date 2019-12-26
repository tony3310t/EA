//+------------------------------------------------------------------+
//|                                                     QuickBuy.mq4 |
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
input double Lots = 0.01;
input double Loss = 150;
input double Profit = 150;
int OnInit()
{
    //---
    //---
    int restDigit = 0;
    int digits = Digits;
    double point;

    if (Digits > 4)
    {
        digits = 4;
        restDigit = Digits - digits;
    }

    double stopLoss = Ask - (Loss * MathPow(10, -restDigit) * MathPow(10, -digits));
    double takeProfit = Ask + (Profit * MathPow(10, -restDigit) * MathPow(10, -digits));

    int count = 0;
    while ((count < 10))
    {
        RefreshRates();
        if (OrderSend(Symbol(), OP_BUY, Lots, Ask, 3, NormalizeDouble(stopLoss, Digits), NormalizeDouble(takeProfit, Digits), "Buy a order", 0, 0, Green) < 0)
        {
            Alert("Error, ", GetLastError());
        }
        else
        {
            break;
        }
        count++;
    }
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
