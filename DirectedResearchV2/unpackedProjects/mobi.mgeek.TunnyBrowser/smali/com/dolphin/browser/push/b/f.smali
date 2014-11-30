.class Lcom/dolphin/browser/push/b/f;
.super Ljava/lang/Object;
.source "AddSpeedDialFolderMessageExcutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/push/a/e;

.field final synthetic b:Lcom/dolphin/browser/ui/launcher/g;

.field final synthetic c:Lcom/dolphin/browser/push/b/e;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/push/b/e;Lcom/dolphin/browser/push/a/e;Lcom/dolphin/browser/ui/launcher/g;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/dolphin/browser/push/b/f;->c:Lcom/dolphin/browser/push/b/e;

    iput-object p2, p0, Lcom/dolphin/browser/push/b/f;->a:Lcom/dolphin/browser/push/a/e;

    iput-object p3, p0, Lcom/dolphin/browser/push/b/f;->b:Lcom/dolphin/browser/ui/launcher/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 39
    new-instance v1, Lcom/dolphin/browser/launcher/be;

    invoke-direct {v1}, Lcom/dolphin/browser/launcher/be;-><init>()V

    .line 40
    iget-object v0, p0, Lcom/dolphin/browser/push/b/f;->a:Lcom/dolphin/browser/push/a/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/a/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/launcher/be;->a(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1, v6}, Lcom/dolphin/browser/launcher/be;->a(I)V

    .line 42
    iget-object v0, p0, Lcom/dolphin/browser/push/b/f;->a:Lcom/dolphin/browser/push/a/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/a/e;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/a/f;

    .line 43
    invoke-virtual {v0}, Lcom/dolphin/browser/push/a/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dolphin/browser/push/a/f;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/dolphin/browser/launcher/cl;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/dolphin/browser/launcher/cl;

    move-result-object v3

    .line 44
    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/dolphin/browser/push/a/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/dolphin/browser/launcher/cl;->a(ILjava/lang/String;)V

    .line 45
    invoke-virtual {v3, v6}, Lcom/dolphin/browser/launcher/cl;->a(I)V

    .line 46
    const-string v0, "push"

    invoke-virtual {v3, v0}, Lcom/dolphin/browser/launcher/cl;->d(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1, v3}, Lcom/dolphin/browser/launcher/be;->a(Lcom/dolphin/browser/launcher/cl;)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/push/b/f;->b:Lcom/dolphin/browser/ui/launcher/g;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/ui/launcher/g;->a(Lcom/dolphin/browser/launcher/bi;Z)Z

    .line 50
    return-void
.end method
