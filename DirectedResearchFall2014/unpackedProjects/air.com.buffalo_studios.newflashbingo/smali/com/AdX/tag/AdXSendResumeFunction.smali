.class public Lcom/AdX/tag/AdXSendResumeFunction;
.super Ljava/lang/Object;
.source "AdXSendResumeFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 1
    .parameter "context"
    .parameter "passedArgs"

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 35
    .local v0, result:Lcom/adobe/fre/FREObject;
    return-object v0
.end method
