.class public Lcom/playtika/extensions/amazon/AmazonGetTransactionsFunction;
.super Ljava/lang/Object;
.source "AmazonGetTransactionsFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "passedArgs"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 14
    const/4 v3, 0x0

    .line 15
    .local v3, "result":Lcom/adobe/fre/FREObject;
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/amazon/AmazonExtensionContext;

    move-object v1, v0

    .line 19
    .local v1, "ctx":Lcom/playtika/extensions/amazon/AmazonExtensionContext;
    :try_start_0
    invoke-virtual {v1}, Lcom/playtika/extensions/amazon/AmazonExtensionContext;->getTransactions()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 26
    :goto_0
    return-object v3

    .line 21
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 23
    .local v2, "fwte":Lcom/adobe/fre/FREWrongThreadException;
    invoke-virtual {v2}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_0
.end method
