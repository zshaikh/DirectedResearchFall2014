.class Lcom/dolphin/browser/download/ui/bm;
.super Ljava/lang/Object;
.source "FileManagerCategoryAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/dolphin/browser/download/ui/bl;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/bl;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/bm;->b:Lcom/dolphin/browser/download/ui/bl;

    iput-object p2, p0, Lcom/dolphin/browser/download/ui/bm;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bm;->a:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bm;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bm;->b:Lcom/dolphin/browser/download/ui/bl;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/bl;->a(Lcom/dolphin/browser/download/ui/bl;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bm;->a:Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bm;->b:Lcom/dolphin/browser/download/ui/bl;

    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/bl;->notifyDataSetChanged()V

    .line 78
    :cond_1
    return-void
.end method
