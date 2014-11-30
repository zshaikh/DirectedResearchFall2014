.class Lcom/dolphin/browser/pagedrop/activity/n;
.super Lcom/dolphin/browser/util/f;
.source "PagedropSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/activity/n;->a:Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;Lcom/dolphin/browser/pagedrop/activity/l;)V
    .locals 0

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/dolphin/browser/pagedrop/activity/n;-><init>(Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/n;->a:Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->b(Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/n;->a:Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/n;->a:Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;

    invoke-static {v1}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->b(Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/e/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 358
    const/high16 v1, 0x41d00000

    invoke-static {v0, v1}, Lcom/dolphin/browser/pagedrop/e/a;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 361
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 343
    if-eqz p1, :cond_0

    .line 344
    check-cast p1, Landroid/graphics/Bitmap;

    .line 345
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/n;->a:Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;

    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/n;->a:Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;

    invoke-static {v1}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->a(Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->a(Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 347
    :cond_0
    return-void
.end method
