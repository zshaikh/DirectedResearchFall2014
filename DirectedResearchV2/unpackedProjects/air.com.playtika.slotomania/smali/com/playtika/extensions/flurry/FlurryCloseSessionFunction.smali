.class public Lcom/playtika/extensions/flurry/FlurryCloseSessionFunction;
.super Ljava/lang/Object;
.source "FlurryCloseSessionFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 17
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/flurry/FlurryExtensionContext;

    move-object v1, v0

    .line 18
    .local v1, "ctx":Lcom/playtika/extensions/flurry/FlurryExtensionContext;
    invoke-virtual {v1}, Lcom/playtika/extensions/flurry/FlurryExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 20
    .local v2, "tmp":Landroid/content/Context;
    invoke-static {v2}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 22
    const/4 v3, 0x0

    return-object v3
.end method
