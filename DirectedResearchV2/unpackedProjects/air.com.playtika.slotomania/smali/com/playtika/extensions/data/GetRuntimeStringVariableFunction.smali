.class public Lcom/playtika/extensions/data/GetRuntimeStringVariableFunction;
.super Ljava/lang/Object;
.source "GetRuntimeStringVariableFunction.java"

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
    .locals 7
    .param p1, "ctx"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 11
    move-object v0, p1

    check-cast v0, Lcom/playtika/extensions/data/RuntimeVariablesContext;

    move-object v1, v0

    .line 13
    .local v1, "context":Lcom/playtika/extensions/data/RuntimeVariablesContext;
    const/4 v5, 0x0

    .line 14
    .local v5, "variable":Ljava/lang/String;
    const/4 v3, 0x0

    .line 16
    .local v3, "result":Lcom/adobe/fre/FREObject;
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, p2, v6

    invoke-virtual {v6}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-virtual {v1, v5}, Lcom/playtika/extensions/data/RuntimeVariablesContext;->getStringVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 18
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 23
    .end local v4    # "value":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 19
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 20
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
