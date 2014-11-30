.class Lcom/dolphin/browser/search/a/f;
.super Lcom/dolphin/browser/util/f;
.source "SearchEngineIconManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/dolphin/browser/search/a/e;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/a/e;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/dolphin/browser/search/a/f;->c:Lcom/dolphin/browser/search/a/e;

    iput-object p2, p0, Lcom/dolphin/browser/search/a/f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/search/a/f;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/dolphin/browser/search/a/f;->c:Lcom/dolphin/browser/search/a/e;

    iget-object v1, p0, Lcom/dolphin/browser/search/a/f;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/dolphin/browser/search/a/f;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/search/a/e;->a(Lcom/dolphin/browser/search/a/e;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 228
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/a/f;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/dolphin/browser/search/a/f;->c:Lcom/dolphin/browser/search/a/e;

    invoke-static {v0}, Lcom/dolphin/browser/search/a/e;->a(Lcom/dolphin/browser/search/a/e;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/search/a/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 240
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/dolphin/browser/search/a/f;->c:Lcom/dolphin/browser/search/a/e;

    invoke-static {v0}, Lcom/dolphin/browser/search/a/e;->b(Lcom/dolphin/browser/search/a/e;)V

    .line 242
    iget-object v0, p0, Lcom/dolphin/browser/search/a/f;->c:Lcom/dolphin/browser/search/a/e;

    iget-object v1, p0, Lcom/dolphin/browser/search/a/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/a/e;->notifyObservers(Ljava/lang/Object;)V

    .line 244
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 228
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/a/f;->a(Ljava/lang/Boolean;)V

    return-void
.end method
