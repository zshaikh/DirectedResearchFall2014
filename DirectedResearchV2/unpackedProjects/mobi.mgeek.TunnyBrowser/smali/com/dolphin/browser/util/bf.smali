.class Lcom/dolphin/browser/util/bf;
.super Ljava/lang/Object;
.source "IconUtil.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/dolphin/browser/util/be;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/util/be;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/dolphin/browser/util/bf;->b:Lcom/dolphin/browser/util/be;

    iput-object p2, p0, Lcom/dolphin/browser/util/bf;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 3

    .prologue
    .line 63
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/util/bf;->b:Lcom/dolphin/browser/util/be;

    iget-object v1, p0, Lcom/dolphin/browser/util/bf;->a:Ljava/util/List;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/be;->a(Lcom/dolphin/browser/util/be;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
