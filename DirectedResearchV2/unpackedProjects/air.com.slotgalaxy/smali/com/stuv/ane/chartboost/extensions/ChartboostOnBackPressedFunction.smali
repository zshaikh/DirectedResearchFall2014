.class public Lcom/stuv/ane/chartboost/extensions/ChartboostOnBackPressedFunction;
.super Ljava/lang/Object;
.source "ChartboostOnBackPressedFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "passedArgs"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 20
    invoke-static {}, Lcom/stuv/ane/chartboost/extensions/ChartboostWrapper;->onBackPressed()Z

    move-result v0

    .line 23
    .local v0, "backPressed":Z
    const/4 v1, 0x0

    .line 27
    .local v1, "result":Lcom/adobe/fre/FREObject;
    :try_start_0
    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 34
    :goto_0
    return-object v1

    .line 29
    :catch_0
    move-exception v2

    goto :goto_0
.end method
