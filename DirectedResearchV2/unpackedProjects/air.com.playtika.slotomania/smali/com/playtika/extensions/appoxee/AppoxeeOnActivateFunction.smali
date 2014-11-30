.class public Lcom/playtika/extensions/appoxee/AppoxeeOnActivateFunction;
.super Ljava/lang/Object;
.source "AppoxeeOnActivateFunction.java"

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
    .locals 3
    .param p1, "ctx"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 12
    new-instance v2, Lcom/appoxee/OnActivate;

    invoke-direct {v2}, Lcom/appoxee/OnActivate;-><init>()V

    .line 14
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/appoxee/AppoxeeExtensionContext;

    move-object v1, v0

    .line 15
    .local v1, "context":Lcom/playtika/extensions/appoxee/AppoxeeExtensionContext;
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/playtika/extensions/appoxee/AppoxeeExtensionContext;->listenForGCMRegistrationID(Landroid/content/Context;)V

    .line 17
    const/4 v2, 0x0

    return-object v2
.end method
