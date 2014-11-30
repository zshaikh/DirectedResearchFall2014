.class Lcom/dolphin/browser/theme/b/c;
.super Lcom/dolphin/browser/util/f;
.source "LocalWallpaperImporter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/io/File;",
        "Ljava/lang/Void;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/theme/b/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/b/b;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/dolphin/browser/theme/b/c;->a:Lcom/dolphin/browser/theme/b/b;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/io/File;)Ljava/io/File;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dolphin/browser/theme/b/c;->a:Lcom/dolphin/browser/theme/b/b;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/theme/b/b;->a(Lcom/dolphin/browser/theme/b/b;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 135
    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/theme/b/c;->a([Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method protected a(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/dolphin/browser/theme/b/c;->a:Lcom/dolphin/browser/theme/b/b;

    invoke-static {v0}, Lcom/dolphin/browser/theme/b/b;->a(Lcom/dolphin/browser/theme/b/b;)Lcom/dolphin/browser/theme/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/dolphin/browser/theme/b/c;->a:Lcom/dolphin/browser/theme/b/b;

    invoke-static {v0}, Lcom/dolphin/browser/theme/b/b;->a(Lcom/dolphin/browser/theme/b/b;)Lcom/dolphin/browser/theme/b/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dolphin/browser/theme/b/d;->a(Ljava/io/File;)V

    .line 142
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 135
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/theme/b/c;->a(Ljava/io/File;)V

    return-void
.end method
