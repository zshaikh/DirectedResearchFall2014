.class Lcom/dolphin/browser/share/twitter/e;
.super Lcom/dolphin/browser/util/f;
.source "TwitterShareViewContent.java"


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

.field final synthetic b:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/dolphin/browser/share/twitter/e;->b:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    iput-object p2, p0, Lcom/dolphin/browser/share/twitter/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 239
    invoke-static {}, Lcom/dolphin/browser/b/a;->a()Lcom/dolphin/browser/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/b/a;->e(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 230
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/share/twitter/e;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/e;->b:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->a(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;Z)V

    .line 234
    invoke-static {}, Lcom/dolphin/browser/b/a;->a()Lcom/dolphin/browser/b/a;

    .line 235
    return-void
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/e;->b:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->a(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;Z)V

    .line 245
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/e;->b:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    invoke-static {v0, p1}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->a(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 246
    if-eqz p1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/e;->b:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    invoke-static {v0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->d(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/e;->b:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    invoke-static {v0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->e(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 230
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/share/twitter/e;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
