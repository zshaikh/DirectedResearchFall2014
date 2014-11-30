.class Lcom/dolphin/browser/pagedrop/activity/o;
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
    .line 365
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/activity/o;->a:Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;Lcom/dolphin/browser/pagedrop/activity/l;)V
    .locals 0

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/dolphin/browser/pagedrop/activity/o;-><init>(Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 378
    if-nez p1, :cond_0

    .line 379
    const-string v0, "param empty"

    .line 393
    :goto_0
    return-object v0

    .line 382
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 383
    if-nez v0, :cond_1

    .line 384
    const-string v0, "bit map empty"

    goto :goto_0

    .line 387
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/pagedrop/activity/q;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 389
    if-eqz v0, :cond_2

    .line 390
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/activity/o;->a:Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;->a(Lcom/dolphin/browser/pagedrop/activity/PagedropSettingActivity;Z)Z

    .line 391
    const-string v0, "saved success"

    goto :goto_0

    .line 393
    :cond_2
    const-string v0, "saved fail"

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 369
    const-string v0, "PagedropSettingActivity"

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string v0, "DBS Page Drop"

    const-string v1, "edit"

    const-string v2, "photo"

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    .line 373
    return-void
.end method
