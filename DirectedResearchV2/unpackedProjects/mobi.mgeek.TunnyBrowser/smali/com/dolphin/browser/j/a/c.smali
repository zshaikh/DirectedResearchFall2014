.class Lcom/dolphin/browser/j/a/c;
.super Ljava/lang/Object;
.source "WebServiceClient.java"

# interfaces
.implements Lcom/dolphin/browser/j/a/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dolphin/browser/j/a/d",
        "<",
        "Lcom/dolphin/browser/j/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/j/a/a;

.field final synthetic c:Lcom/dolphin/browser/j/a/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/j/a/b;Ljava/lang/String;Lcom/dolphin/browser/j/a/a;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/dolphin/browser/j/a/c;->c:Lcom/dolphin/browser/j/a/b;

    iput-object p2, p0, Lcom/dolphin/browser/j/a/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/j/a/c;->b:Lcom/dolphin/browser/j/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/j/a/a;
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/j/a/c;->c:Lcom/dolphin/browser/j/a/b;

    iget-object v1, p0, Lcom/dolphin/browser/j/a/c;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dolphin/browser/j/a/b;->a(Lcom/dolphin/browser/j/a/b;Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    .line 44
    :cond_0
    invoke-static {v0}, Lcom/dolphin/browser/Network/l;->c(Lorg/apache/http/HttpEntity;)Lorg/json/JSONObject;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/dolphin/browser/j/a/c;->b:Lcom/dolphin/browser/j/a/a;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/j/a/a;->b(Lorg/json/JSONObject;)Lcom/dolphin/browser/j/a/a;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/dolphin/browser/j/a/c;->a()Lcom/dolphin/browser/j/a/a;

    move-result-object v0

    return-object v0
.end method
