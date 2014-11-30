.class Lcom/dolphin/browser/promoted/w;
.super Ljava/lang/Object;
.source "WebServiceClient.java"

# interfaces
.implements Lcom/dolphin/browser/promoted/x;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dolphin/browser/promoted/x",
        "<",
        "Lcom/dolphin/browser/promoted/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/dolphin/browser/promoted/v;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/promoted/v;J)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/dolphin/browser/promoted/w;->b:Lcom/dolphin/browser/promoted/v;

    iput-wide p2, p0, Lcom/dolphin/browser/promoted/w;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dolphin/browser/promoted/w;->b:Lcom/dolphin/browser/promoted/v;

    invoke-static {v0}, Lcom/dolphin/browser/promoted/v;->a(Lcom/dolphin/browser/promoted/v;)Lcom/dolphin/browser/promoted/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/promoted/y;->e()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/dolphin/browser/promoted/w;->b:Lcom/dolphin/browser/promoted/v;

    invoke-static {v1}, Lcom/dolphin/browser/promoted/v;->b(Lcom/dolphin/browser/promoted/v;)Lcom/dolphin/browser/promoted/aa;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lcom/dolphin/browser/promoted/aa;->a(Landroid/net/Uri$Builder;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/promoted/h;
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/dolphin/browser/promoted/w;->a:J

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/promoted/w;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/dolphin/browser/promoted/w;->b:Lcom/dolphin/browser/promoted/v;

    invoke-static {v1, v0}, Lcom/dolphin/browser/promoted/v;->a(Lcom/dolphin/browser/promoted/v;Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/dolphin/browser/Network/l;->c(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/dolphin/browser/promoted/h;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/promoted/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/dolphin/browser/promoted/w;->a()Lcom/dolphin/browser/promoted/h;

    move-result-object v0

    return-object v0
.end method
