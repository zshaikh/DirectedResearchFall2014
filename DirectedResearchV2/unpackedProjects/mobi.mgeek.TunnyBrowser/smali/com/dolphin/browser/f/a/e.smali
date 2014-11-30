.class Lcom/dolphin/browser/f/a/e;
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
    .line 210
    iput-object p1, p0, Lcom/dolphin/browser/f/a/e;->b:Lcom/dolphin/browser/f/a/b;

    iput-object p2, p0, Lcom/dolphin/browser/f/a/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 214
    .line 216
    invoke-static {}, Lcom/dolphin/browser/f/d/d;->a()Lcom/dolphin/browser/f/d/d;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/f/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/f/d/d;->a(Ljava/lang/String;)Lcom/dolphin/browser/f/d/b;

    move-result-object v0

    .line 217
    if-nez v0, :cond_3

    .line 218
    iget-object v0, p0, Lcom/dolphin/browser/f/a/e;->b:Lcom/dolphin/browser/f/a/b;

    iget-object v1, p0, Lcom/dolphin/browser/f/a/e;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dolphin/browser/f/a/b;->a(Lcom/dolphin/browser/f/a/b;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 219
    :goto_0
    if-nez v0, :cond_0

    .line 220
    invoke-static {}, Lcom/dolphin/browser/b/a;->a()Lcom/dolphin/browser/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/f/a/e;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/dolphin/browser/f/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/b/a;->d(Ljava/lang/String;)Z

    move-result v0

    .line 228
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/dolphin/browser/f/a/e;->b:Lcom/dolphin/browser/f/a/b;

    iget-object v1, p0, Lcom/dolphin/browser/f/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/f/a/b;->b(Ljava/lang/String;)Z

    move-result v0

    .line 232
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 218
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 224
    :cond_3
    invoke-static {}, Lcom/dolphin/browser/b/a;->a()Lcom/dolphin/browser/b/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/dolphin/browser/f/d/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/b/a;->d(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 210
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/f/a/e;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 237
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/dolphin/browser/f/a/e;->b:Lcom/dolphin/browser/f/a/b;

    invoke-static {v0}, Lcom/dolphin/browser/f/a/b;->c(Lcom/dolphin/browser/f/a/b;)V

    .line 239
    iget-object v0, p0, Lcom/dolphin/browser/f/a/e;->b:Lcom/dolphin/browser/f/a/b;

    iget-object v1, p0, Lcom/dolphin/browser/f/a/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/f/a/b;->notifyObservers(Ljava/lang/Object;)V

    .line 241
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 210
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/f/a/e;->a(Ljava/lang/Boolean;)V

    return-void
.end method
