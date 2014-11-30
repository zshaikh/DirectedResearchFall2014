.class Lcom/dolphin/browser/ui/launcher/i;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/launcher/g;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/launcher/g;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/dolphin/browser/ui/launcher/i;->a:Lcom/dolphin/browser/ui/launcher/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 242
    invoke-static {}, Lcom/dolphin/browser/f/b/d;->a()Lcom/dolphin/browser/f/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/f/b/d;->c()Ljava/util/List;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 245
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/f/b/a;

    .line 246
    invoke-virtual {v0}, Lcom/dolphin/browser/f/b/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 247
    iget-object v2, p0, Lcom/dolphin/browser/ui/launcher/i;->a:Lcom/dolphin/browser/ui/launcher/g;

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/ui/launcher/g;->d(Ljava/lang/String;)Lcom/dolphin/browser/launcher/cl;

    move-result-object v2

    .line 248
    if-eqz v2, :cond_0

    .line 249
    invoke-virtual {v2}, Lcom/dolphin/browser/launcher/cl;->t()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/launcher/w;

    .line 250
    if-nez v0, :cond_1

    .line 251
    new-instance v0, Lcom/dolphin/browser/ui/launcher/w;

    invoke-direct {v0}, Lcom/dolphin/browser/ui/launcher/w;-><init>()V

    .line 253
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/dolphin/browser/ui/launcher/w;->b:Z

    .line 254
    invoke-virtual {v2, v0}, Lcom/dolphin/browser/launcher/cl;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 258
    :cond_2
    return-void
.end method
