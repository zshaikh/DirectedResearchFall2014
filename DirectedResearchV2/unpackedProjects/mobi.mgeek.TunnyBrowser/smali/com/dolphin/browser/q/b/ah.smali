.class Lcom/dolphin/browser/q/b/ah;
.super Ljava/lang/Object;
.source "EvernoteManager.java"

# interfaces
.implements Lcom/dolphin/browser/q/b/au;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/b/bf;

.field final synthetic b:Lcom/dolphin/browser/q/b/ag;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/b/ag;Lcom/dolphin/browser/q/b/bf;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/dolphin/browser/q/b/ah;->b:Lcom/dolphin/browser/q/b/ag;

    iput-object p2, p0, Lcom/dolphin/browser/q/b/ah;->a:Lcom/dolphin/browser/q/b/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ah;->a:Lcom/dolphin/browser/q/b/bf;

    invoke-interface {v0}, Lcom/dolphin/browser/q/b/bf;->a()V

    .line 86
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 69
    if-eqz p1, :cond_0

    .line 71
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/c/b/c/l;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/dolphin/browser/q/b/ah;->a:Lcom/dolphin/browser/q/b/bf;

    invoke-interface {v1, v0}, Lcom/dolphin/browser/q/b/bf;->a(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    iget-object v1, p0, Lcom/dolphin/browser/q/b/ah;->a:Lcom/dolphin/browser/q/b/bf;

    new-instance v2, Lcom/dolphin/browser/q/b/af;

    invoke-direct {v2, v0}, Lcom/dolphin/browser/q/b/af;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/dolphin/browser/q/b/bf;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ah;->a:Lcom/dolphin/browser/q/b/bf;

    new-instance v1, Lcom/dolphin/browser/q/b/af;

    const-string v2, "Returned notebook list is null."

    invoke-direct {v1, v2}, Lcom/dolphin/browser/q/b/af;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/dolphin/browser/q/b/bf;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
