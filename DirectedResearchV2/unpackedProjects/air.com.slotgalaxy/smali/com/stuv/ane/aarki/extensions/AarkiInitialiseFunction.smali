.class public Lcom/stuv/ane/aarki/extensions/AarkiInitialiseFunction;
.super Ljava/lang/Object;
.source "AarkiInitialiseFunction.java"

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
    .line 14
    move-object v0, p1

    check-cast v0, Lcom/stuv/ane/aarki/extensions/AarkiExtensionContext;

    move-object v1, v0

    .line 16
    .local v1, "fbContext":Lcom/stuv/ane/aarki/extensions/AarkiExtensionContext;
    invoke-virtual {v1}, Lcom/stuv/ane/aarki/extensions/AarkiExtensionContext;->initialise()V

    .line 18
    invoke-static {}, Lcom/stuv/ane/aarki/extensions/AarkiWrapper;->initialise()V

    .line 20
    const/4 v2, 0x0

    return-object v2
.end method
