.class Lcom/dolphin/browser/w/b;
.super Lcom/dolphin/browser/util/f;
.source "WebAppPreview.java"


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

.field final synthetic b:Lcom/dolphin/browser/w/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/w/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/dolphin/browser/w/b;->b:Lcom/dolphin/browser/w/a;

    iput-object p2, p0, Lcom/dolphin/browser/w/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 110
    invoke-static {}, Lcom/dolphin/browser/b/a;->a()Lcom/dolphin/browser/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/w/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/b/a;->e(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/w/b;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 105
    invoke-static {}, Lcom/dolphin/browser/b/a;->a()Lcom/dolphin/browser/b/a;

    .line 106
    return-void
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 116
    if-eqz p1, :cond_0

    .line 117
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 118
    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 119
    iget-object v1, p0, Lcom/dolphin/browser/w/b;->b:Lcom/dolphin/browser/w/a;

    invoke-static {v1}, Lcom/dolphin/browser/w/a;->a(Lcom/dolphin/browser/w/a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/w/b;->b:Lcom/dolphin/browser/w/a;

    invoke-static {v0}, Lcom/dolphin/browser/w/a;->a(Lcom/dolphin/browser/w/a;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/w/b;->b:Lcom/dolphin/browser/w/a;

    invoke-static {v0}, Lcom/dolphin/browser/w/a;->a(Lcom/dolphin/browser/w/a;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 102
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/w/b;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
