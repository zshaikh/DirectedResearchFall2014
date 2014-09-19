.class public Lcom/bitrhymes/iab/functions/GetPurchaseInfo;
.super Ljava/lang/Object;
.source "GetPurchaseInfo.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mHelper:Lcom/bitrhymes/iab/util/IabHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/bitrhymes/iab/functions/GetPurchaseInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bitrhymes/iab/functions/GetPurchaseInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4
    .parameter "freContext"
    .parameter "args"

    .prologue
    .line 24
    sget-object v2, Lcom/bitrhymes/iab/functions/GetPurchaseInfo;->TAG:Ljava/lang/String;

    const-string v3, "***GetPurchaseInfo****"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {p1}, Lcom/bitrhymes/iab/functions/Utils;->setFREContextObj(Lcom/adobe/fre/FREContext;)V

    .line 26
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 27
    .local v0, activity:Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 29
    .local v1, myIntent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/bitrhymes/iab/functions/GoogleIABV3Activity;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const-string v2, "method"

    const-string v3, "CALL_GET_PURCHASE_INFO"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 34
    const/4 v2, 0x0

    return-object v2
.end method
