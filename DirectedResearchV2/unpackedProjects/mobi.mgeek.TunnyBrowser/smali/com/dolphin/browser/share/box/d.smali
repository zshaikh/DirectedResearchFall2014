.class Lcom/dolphin/browser/share/box/d;
.super Lcom/dolphin/browser/util/f;
.source "BoxShareViewContent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/share/box/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/box/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/dolphin/browser/share/box/d;->b:Lcom/dolphin/browser/share/box/b;

    iput-object p2, p0, Lcom/dolphin/browser/share/box/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 200
    invoke-static {}, Lcom/dolphin/browser/b/a;->a()Lcom/dolphin/browser/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/share/box/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/b/a;->e(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 197
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/share/box/d;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 204
    invoke-static {}, Lcom/dolphin/browser/b/a;->a()Lcom/dolphin/browser/b/a;

    .line 205
    return-void
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/dolphin/browser/share/box/d;->b:Lcom/dolphin/browser/share/box/b;

    invoke-static {v0, p1}, Lcom/dolphin/browser/share/box/b;->a(Lcom/dolphin/browser/share/box/b;Landroid/graphics/Bitmap;)V

    .line 209
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 197
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/share/box/d;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
