.class Lcom/dolphin/browser/titlebar/x;
.super Ljava/lang/Object;
.source "UrlOptionsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/Observer;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/titlebar/u;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/titlebar/u;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/dolphin/browser/titlebar/x;->a:Lcom/dolphin/browser/titlebar/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/titlebar/u;Lcom/dolphin/browser/titlebar/v;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/dolphin/browser/titlebar/x;-><init>(Lcom/dolphin/browser/titlebar/u;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 167
    invoke-static {}, Lcom/dolphin/browser/f/a/b;->a()Lcom/dolphin/browser/f/a/b;

    move-result-object v0

    .line 168
    invoke-virtual {v0, p0}, Lcom/dolphin/browser/f/a/b;->addObserver(Ljava/util/Observer;)V

    .line 169
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/x;->a:Lcom/dolphin/browser/titlebar/u;

    invoke-static {v1}, Lcom/dolphin/browser/titlebar/u;->a(Lcom/dolphin/browser/titlebar/u;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/f/a/b;->e(Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/x;->a:Lcom/dolphin/browser/titlebar/u;

    iget-object v1, p0, Lcom/dolphin/browser/titlebar/x;->a:Lcom/dolphin/browser/titlebar/u;

    invoke-static {v1}, Lcom/dolphin/browser/titlebar/u;->a(Lcom/dolphin/browser/titlebar/u;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/titlebar/u;->a(Lcom/dolphin/browser/titlebar/u;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 191
    new-instance v1, Lcom/dolphin/browser/titlebar/w;

    iget-object v2, p0, Lcom/dolphin/browser/titlebar/x;->a:Lcom/dolphin/browser/titlebar/u;

    invoke-direct {v1, v2, v0}, Lcom/dolphin/browser/titlebar/w;-><init>(Lcom/dolphin/browser/titlebar/u;Landroid/graphics/Bitmap;)V

    .line 192
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/titlebar/w;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 193
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/dolphin/browser/titlebar/x;->a:Lcom/dolphin/browser/titlebar/u;

    invoke-static {v0}, Lcom/dolphin/browser/titlebar/u;->a(Lcom/dolphin/browser/titlebar/u;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-static {}, Lcom/dolphin/browser/f/a/b;->a()Lcom/dolphin/browser/f/a/b;

    move-result-object v0

    .line 179
    invoke-virtual {v0, p0}, Lcom/dolphin/browser/f/a/b;->deleteObserver(Ljava/util/Observer;)V

    .line 180
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    iget-object v1, p0, Lcom/dolphin/browser/titlebar/x;->a:Lcom/dolphin/browser/titlebar/u;

    invoke-static {v1}, Lcom/dolphin/browser/titlebar/u;->a(Lcom/dolphin/browser/titlebar/u;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/f/a/b;->f(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    new-instance v1, Lcom/dolphin/browser/titlebar/w;

    iget-object v2, p0, Lcom/dolphin/browser/titlebar/x;->a:Lcom/dolphin/browser/titlebar/u;

    invoke-direct {v1, v2, v0}, Lcom/dolphin/browser/titlebar/w;-><init>(Lcom/dolphin/browser/titlebar/u;Landroid/graphics/Bitmap;)V

    .line 183
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/titlebar/w;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 185
    :cond_0
    return-void
.end method
