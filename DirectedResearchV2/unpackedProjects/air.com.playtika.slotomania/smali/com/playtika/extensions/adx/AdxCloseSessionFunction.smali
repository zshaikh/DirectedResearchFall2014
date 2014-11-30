.class public Lcom/playtika/extensions/adx/AdxCloseSessionFunction;
.super Ljava/lang/Object;
.source "AdxCloseSessionFunction.java"

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
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v4, 0x0

    .line 13
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/adx/AdxExtensionContext;

    move-object v1, v0

    .line 14
    .local v1, "ctx":Lcom/playtika/extensions/adx/AdxExtensionContext;
    invoke-virtual {v1}, Lcom/playtika/extensions/adx/AdxExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 17
    .local v2, "tmp":Landroid/content/Context;
    invoke-static {v2, v4, v4}, Lcom/AdX/tag/AdXConnect;->getAdXConnectInstance(Landroid/content/Context;ZI)Lcom/AdX/tag/AdXConnect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/AdX/tag/AdXConnect;->finalize()V

    .line 19
    const/4 v3, 0x0

    return-object v3
.end method
