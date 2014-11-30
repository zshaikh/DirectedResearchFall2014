.class Lcom/dolphin/browser/pagedrop/activity/p;
.super Lcom/dolphin/browser/util/f;
.source "PagedropSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/activity/p;->a:Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;Lcom/dolphin/browser/pagedrop/activity/l;)V
    .locals 0

    .prologue
    .line 441
    invoke-direct {p0, p1}, Lcom/dolphin/browser/pagedrop/activity/p;-><init>(Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;)V

    return-void
.end method


# virtual methods
.method protected synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 441
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/pagedrop/activity/p;->c([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs c([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 446
    const-string v0, ""

    .line 447
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/p;->a:Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;

    invoke-static {v1}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->b(Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 448
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/p;->a:Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 450
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/activity/p;->a:Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;

    invoke-static {v1}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->b(Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 451
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/pagedrop/e;->a()Lcom/dolphin/browser/pagedrop/e;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/activity/p;->a:Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;

    invoke-virtual {v2}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dolphin/browser/pagedrop/activity/p;->a:Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;

    invoke-static {v3}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->c(Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/dolphin/browser/pagedrop/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 454
    const/4 v0, 0x0

    return-object v0
.end method
