.class public Lcom/chartboost/sdk/impl/v;
.super Lcom/chartboost/sdk/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/v$a;,
        Lcom/chartboost/sdk/impl/v$b;,
        Lcom/chartboost/sdk/impl/v$c;
    }
.end annotation


# instance fields
.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/a;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/b;-><init>(Lcom/chartboost/sdk/impl/a;)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->h:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lcom/chartboost/sdk/b$b;
    .locals 2
    .parameter

    .prologue
    .line 52
    new-instance v0, Lcom/chartboost/sdk/impl/v$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->h:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Lcom/chartboost/sdk/impl/v$a;-><init>(Lcom/chartboost/sdk/impl/v;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    const-string v0, "html"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 62
    :cond_0
    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->h:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/v;->a()Z

    goto :goto_0
.end method
