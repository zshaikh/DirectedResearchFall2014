.class public Lcom/playtika/extensions/tools/ToolsHasUriHandlerFunction;
.super Ljava/lang/Object;
.source "ToolsHasUriHandlerFunction.java"

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
    .locals 8
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 17
    const/4 v1, 0x0

    .line 18
    .local v1, "result":Lcom/adobe/fre/FREObject;
    if-eqz p2, :cond_0

    array-length v4, p2

    if-ge v4, v7, :cond_1

    .line 20
    :cond_0
    const-string v4, "TOOLS"

    const-string v5, "URI is requested!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const/4 v4, 0x0

    .line 36
    :goto_0
    return-object v4

    .line 26
    :cond_1
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p2, v4

    invoke-virtual {v4}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 28
    .local v3, "uri":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 29
    .local v2, "test":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    move v4, v7

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 30
    .local v0, "available":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v0    # "available":Ljava/lang/Boolean;
    .end local v2    # "test":Landroid/content/Intent;
    .end local v3    # "uri":Ljava/lang/String;
    :goto_2
    move-object v4, v1

    .line 36
    goto :goto_0

    .restart local v2    # "test":Landroid/content/Intent;
    .restart local v3    # "uri":Ljava/lang/String;
    :cond_2
    move v4, v6

    .line 29
    goto :goto_1

    .line 32
    .end local v2    # "test":Landroid/content/Intent;
    .end local v3    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_2
.end method
