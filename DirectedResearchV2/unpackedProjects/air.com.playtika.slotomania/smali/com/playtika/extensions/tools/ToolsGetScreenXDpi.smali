.class public Lcom/playtika/extensions/tools/ToolsGetScreenXDpi;
.super Ljava/lang/Object;
.source "ToolsGetScreenXDpi.java"

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
    .locals 6
    .param p1, "ctx"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 14
    const/4 v4, 0x0

    .line 16
    .local v4, "result":Lcom/adobe/fre/FREObject;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 17
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 18
    iget v5, v0, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v1, v5

    .line 21
    .local v1, "dpi":D
    :try_start_0
    invoke-static {v1, v2}, Lcom/adobe/fre/FREObject;->newObject(D)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 25
    :goto_0
    return-object v4

    .line 22
    :catch_0
    move-exception v3

    .line 23
    .local v3, "e":Lcom/adobe/fre/FREWrongThreadException;
    invoke-virtual {v3}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_0
.end method
