.class Lcom/dolphin/browser/share/facebook/j;
.super Lcom/dolphin/browser/util/f;
.source "FacebookShareViewContent.java"


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

.field final synthetic b:Lcom/dolphin/browser/share/a;

.field final synthetic c:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;Ljava/lang/String;Lcom/dolphin/browser/share/a;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/dolphin/browser/share/facebook/j;->c:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    iput-object p2, p0, Lcom/dolphin/browser/share/facebook/j;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/share/facebook/j;->b:Lcom/dolphin/browser/share/a;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 474
    invoke-static {}, Lcom/dolphin/browser/b/a;->a()Lcom/dolphin/browser/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/b/a;->e(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 471
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/share/facebook/j;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 478
    invoke-static {}, Lcom/dolphin/browser/b/a;->a()Lcom/dolphin/browser/b/a;

    .line 479
    return-void
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 482
    iget-object v0, p0, Lcom/dolphin/browser/share/facebook/j;->c:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    invoke-static {v0}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    iget-object v1, p0, Lcom/dolphin/browser/share/facebook/j;->c:Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;

    iget-object v2, p0, Lcom/dolphin/browser/share/facebook/j;->b:Lcom/dolphin/browser/share/a;

    invoke-static {v1, v0, p1, v2}, Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;->a(Lcom/dolphin/browser/share/facebook/FacebookShareViewContent;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/dolphin/browser/share/a;)V

    .line 484
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 471
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/share/facebook/j;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
