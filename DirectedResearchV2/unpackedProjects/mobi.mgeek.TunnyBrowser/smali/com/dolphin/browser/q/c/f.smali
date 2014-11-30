.class Lcom/dolphin/browser/q/c/f;
.super Lcom/dolphin/browser/util/f;
.source "FacebookManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/c/u;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/dolphin/browser/q/c/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/c/b;Lcom/dolphin/browser/q/c/u;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/dolphin/browser/q/c/f;->c:Lcom/dolphin/browser/q/c/b;

    iput-object p2, p0, Lcom/dolphin/browser/q/c/f;->a:Lcom/dolphin/browser/q/c/u;

    iput-object p3, p0, Lcom/dolphin/browser/q/c/f;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 385
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/q/c/f;->a([Ljava/lang/Void;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected a([Ljava/lang/Void;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/dolphin/browser/q/c/f;->c:Lcom/dolphin/browser/q/c/b;

    iget-object v1, p0, Lcom/dolphin/browser/q/c/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/c/b;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/dolphin/browser/q/c/f;->a:Lcom/dolphin/browser/q/c/u;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/dolphin/browser/q/c/f;->a:Lcom/dolphin/browser/q/c/u;

    invoke-interface {v0}, Lcom/dolphin/browser/q/c/u;->a()V

    .line 392
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 385
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/q/c/f;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/dolphin/browser/q/c/f;->a:Lcom/dolphin/browser/q/c/u;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/dolphin/browser/q/c/f;->a:Lcom/dolphin/browser/q/c/u;

    invoke-static {p1}, Lcom/dolphin/browser/q/c/a;->a(Lorg/json/JSONObject;)Lcom/dolphin/browser/q/c/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/q/c/u;->a(Lcom/dolphin/browser/q/c/a;)V

    .line 404
    :cond_0
    return-void
.end method
