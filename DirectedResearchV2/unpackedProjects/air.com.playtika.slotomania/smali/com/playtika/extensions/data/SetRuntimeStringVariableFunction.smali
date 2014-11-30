.class public Lcom/playtika/extensions/data/SetRuntimeStringVariableFunction;
.super Ljava/lang/Object;
.source "SetRuntimeStringVariableFunction.java"

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
    .locals 6
    .param p1, "ctx"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 11
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/data/RuntimeVariablesContext;

    move-object v1, v0

    .line 13
    .local v1, "context":Lcom/playtika/extensions/data/RuntimeVariablesContext;
    const/4 v4, 0x0

    .line 14
    .local v4, "variable":Ljava/lang/String;
    const/4 v3, 0x0

    .line 16
    .local v3, "value":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 17
    const/4 v5, 0x1

    aget-object v5, p2, v5

    if-eqz v5, :cond_0

    .line 18
    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 20
    :cond_0
    invoke-virtual {v1, v4, v3}, Lcom/playtika/extensions/data/RuntimeVariablesContext;->setStringVariable(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    const/4 v5, 0x0

    return-object v5

    .line 21
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 22
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
