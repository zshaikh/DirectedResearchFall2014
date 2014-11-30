.class Lcom/dolphin/browser/extensions/a/g;
.super Ljava/lang/Object;
.source "WebServiceClient.java"

# interfaces
.implements Lcom/dolphin/browser/extensions/a/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dolphin/browser/extensions/a/h",
        "<",
        "Lcom/dolphin/browser/extensions/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/dolphin/browser/extensions/a/f;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/extensions/a/f;J)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/dolphin/browser/extensions/a/g;->b:Lcom/dolphin/browser/extensions/a/f;

    iput-wide p2, p0, Lcom/dolphin/browser/extensions/a/g;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/dolphin/browser/i/b;->a()Lcom/dolphin/browser/i/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/i/b;->f()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-direct {p0, v0, p1, p2}, Lcom/dolphin/browser/extensions/a/g;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/dolphin/browser/DolphinService/WebService/i;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/DolphinService/WebService/i;-><init>(Landroid/net/Uri$Builder;)V

    .line 106
    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/WebService/i;->a()Lcom/dolphin/browser/DolphinService/WebService/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/i;->b()Lcom/dolphin/browser/DolphinService/WebService/i;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/dolphin/browser/DolphinService/WebService/i;->a(J)Lcom/dolphin/browser/DolphinService/WebService/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/WebService/i;->e()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/bs;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    return-object v0
.end method

.method private b(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/dolphin/browser/i/a;->a()Lcom/dolphin/browser/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/i/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-direct {p0, v0, p1, p2}, Lcom/dolphin/browser/extensions/a/g;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/extensions/a/b;
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->isBrowserCN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-wide v0, p0, Lcom/dolphin/browser/extensions/a/g;->a:J

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/extensions/a/g;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/extensions/a/g;->b:Lcom/dolphin/browser/extensions/a/f;

    invoke-static {v1, v0}, Lcom/dolphin/browser/extensions/a/f;->a(Lcom/dolphin/browser/extensions/a/f;Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/dolphin/browser/Network/l;->c(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/dolphin/browser/extensions/a/b;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/extensions/a/b;

    move-result-object v0

    return-object v0

    .line 95
    :cond_0
    iget-wide v0, p0, Lcom/dolphin/browser/extensions/a/g;->a:J

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/extensions/a/g;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/dolphin/browser/extensions/a/g;->a()Lcom/dolphin/browser/extensions/a/b;

    move-result-object v0

    return-object v0
.end method
