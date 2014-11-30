.class Lcom/dolphin/browser/f/a/d;
.super Lcom/dolphin/browser/util/f;
.source "FaviconManager.java"


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

.field final synthetic b:Lcom/dolphin/browser/f/a/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/f/a/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/dolphin/browser/f/a/d;->b:Lcom/dolphin/browser/f/a/b;

    iput-object p2, p0, Lcom/dolphin/browser/f/a/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dolphin/browser/f/a/d;->b:Lcom/dolphin/browser/f/a/b;

    invoke-static {v0}, Lcom/dolphin/browser/f/a/b;->a(Lcom/dolphin/browser/f/a/b;)Lcom/dolphin/browser/f/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/f/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/f/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/f/a/d;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/f/a/d;->b:Lcom/dolphin/browser/f/a/b;

    invoke-static {v0}, Lcom/dolphin/browser/f/a/b;->b(Lcom/dolphin/browser/f/a/b;)V

    .line 103
    iget-object v0, p0, Lcom/dolphin/browser/f/a/d;->b:Lcom/dolphin/browser/f/a/b;

    iget-object v1, p0, Lcom/dolphin/browser/f/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/f/a/b;->notifyObservers(Ljava/lang/Object;)V

    .line 105
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 92
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/f/a/d;->a(Ljava/lang/Boolean;)V

    return-void
.end method
