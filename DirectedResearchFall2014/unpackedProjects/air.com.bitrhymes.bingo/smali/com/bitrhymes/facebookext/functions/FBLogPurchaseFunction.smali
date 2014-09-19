.class public Lcom/bitrhymes/facebookext/functions/FBLogPurchaseFunction;
.super Ljava/lang/Object;
.source "FBLogPurchaseFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 8
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 19
    const/4 v5, 0x0

    .line 20
    .local v5, purchaseAmountStr:Ljava/lang/String;
    const/4 v1, 0x0

    .line 21
    .local v1, currencyStr:Ljava/lang/String;
    const/4 v3, 0x0

    .line 22
    .local v3, purchaseAmount:Ljava/math/BigDecimal;
    const/4 v0, 0x0

    .line 25
    .local v0, currency:Ljava/util/Currency;
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 26
    const/4 v6, 0x1

    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 27
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 29
    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .end local v3           #purchaseAmount:Ljava/math/BigDecimal;
    .local v4, purchaseAmount:Ljava/math/BigDecimal;
    move-object v3, v4

    .line 33
    .end local v4           #purchaseAmount:Ljava/math/BigDecimal;
    .restart local v3       #purchaseAmount:Ljava/math/BigDecimal;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 35
    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 49
    :goto_1
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/AppEventsLogger;

    move-result-object v6

    invoke-virtual {v6, v3, v0}, Lcom/facebook/AppEventsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;)V

    .line 51
    const/4 v6, 0x0

    return-object v6

    .line 32
    :cond_0
    :try_start_1
    new-instance v4, Ljava/math/BigDecimal;

    const-wide/16 v6, 0x0

    invoke-direct {v4, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_1 .. :try_end_1} :catch_3

    .end local v3           #purchaseAmount:Ljava/math/BigDecimal;
    .restart local v4       #purchaseAmount:Ljava/math/BigDecimal;
    move-object v3, v4

    .end local v4           #purchaseAmount:Ljava/math/BigDecimal;
    .restart local v3       #purchaseAmount:Ljava/math/BigDecimal;
    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 40
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 41
    .local v2, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 42
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 43
    .local v2, e:Lcom/adobe/fre/FRETypeMismatchException;
    invoke-virtual {v2}, Lcom/adobe/fre/FRETypeMismatchException;->printStackTrace()V

    goto :goto_1

    .line 44
    .end local v2           #e:Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v6

    move-object v2, v6

    .line 45
    .local v2, e:Lcom/adobe/fre/FREInvalidObjectException;
    invoke-virtual {v2}, Lcom/adobe/fre/FREInvalidObjectException;->printStackTrace()V

    goto :goto_1

    .line 46
    .end local v2           #e:Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v6

    move-object v2, v6

    .line 47
    .local v2, e:Lcom/adobe/fre/FREWrongThreadException;
    invoke-virtual {v2}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_1
.end method
