.class Lcom/dolphin/browser/DolphinService/ui/f;
.super Lcom/dolphin/browser/util/f;
.source "AccountServiceManageActivity.java"


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
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/f;->a:Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 347
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v0

    .line 348
    if-nez v0, :cond_0

    .line 349
    const/4 v0, 0x0

    .line 352
    :goto_0
    return-object v0

    .line 351
    :cond_0
    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/e;->a(Lcom/dolphin/browser/DolphinService/Account/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 342
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/f;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 358
    if-nez p1, :cond_0

    .line 359
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/f;->a:Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;

    invoke-static {v0}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->a(Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;)V

    .line 364
    :goto_0
    return-void

    .line 361
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/f;->a:Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;

    invoke-virtual {v1}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 362
    iget-object v1, p0, Lcom/dolphin/browser/DolphinService/ui/f;->a:Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;

    invoke-static {v1}, Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;->b(Lcom/dolphin/browser/DolphinService/ui/AccountServiceManageActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 342
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/f;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
