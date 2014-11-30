.class Lcom/dolphin/browser/b/d;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/b/l;

.field final synthetic c:Lcom/dolphin/browser/b/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/b/a;Ljava/lang/String;Lcom/dolphin/browser/b/l;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/dolphin/browser/b/d;->c:Lcom/dolphin/browser/b/a;

    iput-object p2, p0, Lcom/dolphin/browser/b/d;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/b/d;->b:Lcom/dolphin/browser/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 446
    const/4 v0, 0x0

    .line 447
    iget-object v1, p0, Lcom/dolphin/browser/b/d;->c:Lcom/dolphin/browser/b/a;

    iget-object v2, p0, Lcom/dolphin/browser/b/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/b/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 449
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 450
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 462
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 463
    iget-object v1, p0, Lcom/dolphin/browser/b/d;->b:Lcom/dolphin/browser/b/l;

    if-eqz v1, :cond_1

    .line 464
    iget-object v1, p0, Lcom/dolphin/browser/b/d;->b:Lcom/dolphin/browser/b/l;

    iget-object v2, p0, Lcom/dolphin/browser/b/d;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/dolphin/browser/b/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_1
    return-void

    .line 452
    :cond_2
    iget-object v2, p0, Lcom/dolphin/browser/b/d;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 453
    iget-object v2, p0, Lcom/dolphin/browser/b/d;->a:Ljava/lang/String;

    const-wide/32 v3, 0x177000

    const/4 v5, 0x1

    invoke-static {v2, v1, v3, v4, v5}, Lcom/dolphin/browser/Network/l;->a(Ljava/lang/String;Ljava/io/File;JZ)Z

    move-result v2

    .line 455
    if-eqz v2, :cond_0

    .line 456
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 457
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
