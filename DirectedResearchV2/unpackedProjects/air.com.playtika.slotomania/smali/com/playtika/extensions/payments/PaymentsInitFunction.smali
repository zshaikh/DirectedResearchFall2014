.class public Lcom/playtika/extensions/payments/PaymentsInitFunction;
.super Ljava/lang/Object;
.source "PaymentsInitFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "passedArgs"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 13
    const/4 v2, 0x0

    .line 14
    .local v2, "result":Lcom/adobe/fre/FREObject;
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/payments/PaymentsExtensionContext;

    move-object v1, v0

    .line 16
    .local v1, "ctx":Lcom/playtika/extensions/payments/PaymentsExtensionContext;
    invoke-virtual {v1}, Lcom/playtika/extensions/payments/PaymentsExtensionContext;->initPayments()V

    .line 18
    return-object v2
.end method
