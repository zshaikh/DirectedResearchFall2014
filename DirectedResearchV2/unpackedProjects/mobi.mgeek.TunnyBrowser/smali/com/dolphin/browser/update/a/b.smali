.class Lcom/dolphin/browser/update/a/b;
.super Ljava/lang/Object;
.source "UpdateServiceClient.java"

# interfaces
.implements Lcom/dolphin/browser/update/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dolphin/browser/update/a/c",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/dolphin/browser/update/model/UpdateInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/update/a/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/update/a/a;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/dolphin/browser/update/a/b;->a:Lcom/dolphin/browser/update/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/dolphin/browser/i/b;->a()Lcom/dolphin/browser/i/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/i/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/update/model/UpdateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/dolphin/browser/update/a/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/dolphin/browser/update/a/b;->a:Lcom/dolphin/browser/update/a/a;

    invoke-static {v1}, Lcom/dolphin/browser/update/a/a;->a(Lcom/dolphin/browser/update/a/a;)Lcom/dolphin/browser/update/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/update/a/f;->a()Ljava/lang/String;

    move-result-object v1

    .line 69
    const-string v2, "UpdateServiceClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request url"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v2, "UpdateServiceClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request json: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v2, p0, Lcom/dolphin/browser/update/a/b;->a:Lcom/dolphin/browser/update/a/a;

    invoke-static {v2, v0, v1}, Lcom/dolphin/browser/update/a/a;->a(Lcom/dolphin/browser/update/a/a;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/dolphin/browser/Network/l;->b(Lorg/apache/http/HttpEntity;)Lorg/json/JSONArray;

    move-result-object v0

    .line 73
    const-string v1, "UpdateServiceClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response json: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {v0}, Lcom/dolphin/browser/update/model/UpdateInfo;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/dolphin/browser/update/a/b;->a:Lcom/dolphin/browser/update/a/a;

    invoke-static {v1, v0}, Lcom/dolphin/browser/update/a/a;->a(Lcom/dolphin/browser/update/a/a;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/dolphin/browser/update/a/b;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
