.class Lcom/dolphin/browser/q/b/ab;
.super Lcom/dolphin/browser/util/f;
.source "EvernoteAuthDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/c/a/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/b/y;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/q/b/y;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/dolphin/browser/q/b/ab;->a:Lcom/dolphin/browser/q/b/y;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/q/b/y;Lcom/dolphin/browser/q/b/z;)V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/dolphin/browser/q/b/ab;-><init>(Lcom/dolphin/browser/q/b/y;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Lcom/c/a/b/a;
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ab;->a:Lcom/dolphin/browser/q/b/y;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/q/b/y;->b(Lcom/dolphin/browser/q/b/y;Ljava/lang/String;)Lcom/c/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 272
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/q/b/ab;->a([Ljava/lang/String;)Lcom/c/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/c/a/b/a;)V
    .locals 3

    .prologue
    .line 284
    if-eqz p1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ab;->a:Lcom/dolphin/browser/q/b/y;

    invoke-static {v0, p1}, Lcom/dolphin/browser/q/b/y;->a(Lcom/dolphin/browser/q/b/y;Lcom/c/a/b/a;)V

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ab;->a:Lcom/dolphin/browser/q/b/y;

    new-instance v1, Lcom/dolphin/browser/q/b/af;

    const-string v2, "access token is null"

    invoke-direct {v1, v2}, Lcom/dolphin/browser/q/b/af;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/dolphin/browser/q/b/y;->a(Lcom/dolphin/browser/q/b/y;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 272
    check-cast p1, Lcom/c/a/b/a;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/q/b/ab;->a(Lcom/c/a/b/a;)V

    return-void
.end method
