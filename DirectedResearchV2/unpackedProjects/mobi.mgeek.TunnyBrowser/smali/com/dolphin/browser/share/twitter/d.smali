.class Lcom/dolphin/browser/share/twitter/d;
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
    .line 195
    iput-object p1, p0, Lcom/dolphin/browser/share/twitter/d;->b:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    iput-object p2, p0, Lcom/dolphin/browser/share/twitter/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 204
    invoke-static {}, Lcom/dolphin/browser/b/a;->a()Lcom/dolphin/browser/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/b/a;->e(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 195
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/share/twitter/d;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/d;->b:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->a(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;Z)V

    .line 199
    invoke-static {}, Lcom/dolphin/browser/b/a;->a()Lcom/dolphin/browser/b/a;

    .line 200
    return-void
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/d;->b:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->a(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;Z)V

    .line 210
    if-eqz p1, :cond_0

    .line 211
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/d;->b:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    invoke-static {v1}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->a(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 212
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 213
    iget-object v1, p0, Lcom/dolphin/browser/share/twitter/d;->b:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    invoke-static {v1}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->b(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/twitter/d;->b:Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;

    invoke-static {v0}, Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;->c(Lcom/dolphin/browser/share/twitter/TwitterShareViewContent;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 195
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/share/twitter/d;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
