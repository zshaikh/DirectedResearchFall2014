.class public Lcom/stuv/ane/referrer/extensions/GetReferrerFunction;
.super Ljava/lang/Object;
.source "GetReferrerFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "passedArgs"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 17
    move-object v0, p1

    check-cast v0, Lcom/stuv/ane/referrer/extensions/ExtensionContext;

    move-object v1, v0

    .line 19
    .local v1, "fbContext":Lcom/stuv/ane/referrer/extensions/ExtensionContext;
    invoke-virtual {v1}, Lcom/stuv/ane/referrer/extensions/ExtensionContext;->initialise()V

    .line 23
    invoke-static {}, Lcom/stuv/ane/referrer/extensions/ReferrerWrapper;->getReferrer()Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "referrer":Ljava/lang/String;
    const/4 v3, 0x0

    .line 29
    .local v3, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 36
    :goto_0
    return-object v3

    .line 31
    :catch_0
    move-exception v4

    goto :goto_0
.end method
