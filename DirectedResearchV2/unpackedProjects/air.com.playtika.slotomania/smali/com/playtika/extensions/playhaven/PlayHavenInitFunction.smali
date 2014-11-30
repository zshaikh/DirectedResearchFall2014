.class public Lcom/playtika/extensions/playhaven/PlayHavenInitFunction;
.super Ljava/lang/Object;
.source "PlayHavenInitFunction.java"

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
    .locals 6
    .param p1, "ctx"    # Lcom/adobe/fre/FREContext;
    .param p2, "params"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 15
    const-string v4, ""

    .line 16
    .local v4, "token":Ljava/lang/String;
    const-string v3, ""

    .line 18
    .local v3, "secret":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 19
    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-virtual {v5}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 23
    :goto_0
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 24
    .local v0, "context":Landroid/content/Context;
    sput-object v4, Lcom/playhaven/src/common/PHConfig;->token:Ljava/lang/String;

    .line 25
    sput-object v3, Lcom/playhaven/src/common/PHConfig;->secret:Ljava/lang/String;

    .line 27
    new-instance v2, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;

    invoke-direct {v2, v0}, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;-><init>(Landroid/content/Context;)V

    .line 28
    .local v2, "request":Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;
    invoke-virtual {v2}, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->send()V

    .line 30
    const/4 v5, 0x0

    return-object v5

    .line 20
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "request":Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 21
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
