.class Lcom/inmobi/androidsdk/IMAdView$2;
.super Ljava/lang/Object;
.source "IMAdView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/IMAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/IMAdView;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    .line 1236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v3, 0x64

    .line 1241
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdView;->a()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1243
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdView;->removeAllViews()V

    .line 1244
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->h(Lcom/inmobi/androidsdk/IMAdView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1246
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->addView(Landroid/view/View;)V

    .line 1247
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->f(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/impl/IMAdUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->f(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/impl/IMAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;->AdActionName_Search:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    if-ne v0, v1, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->requestFocusFromTouch()Z

    .line 1256
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->f(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/impl/IMAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->getAdType()Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;->RICH_MEDIA:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdTypes;

    if-eq v0, v1, :cond_1

    .line 1257
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->f(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/impl/IMAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;->AdActionName_Search:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    if-eq v0, v1, :cond_1

    .line 1258
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/IMAdView;->i(Lcom/inmobi/androidsdk/IMAdView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->addView(Landroid/view/View;)V

    .line 1261
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/IMAdView;->b()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1271
    :goto_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdView;->a()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1272
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0, v3, v4}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 1277
    :cond_2
    :goto_2
    return-void

    .line 1251
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/IMAdView;->b(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->addView(Landroid/view/View;)V

    .line 1252
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->f(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/impl/IMAdUnit;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->f(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/impl/IMAdUnit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/IMAdUnit;->getAdActionName()Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    move-result-object v0

    sget-object v1, Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;->AdActionName_Search:Lcom/inmobi/androidsdk/impl/IMAdUnit$AdActionNames;

    if-ne v0, v1, :cond_0

    .line 1253
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->b(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->requestFocusFromTouch()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1268
    :catch_0
    move-exception v0

    .line 1269
    :try_start_2
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "Error animating banner ads"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1271
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdView;->a()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1272
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0, v3, v4}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    goto :goto_2

    .line 1264
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/IMAdView;->h(Lcom/inmobi/androidsdk/IMAdView;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_3
    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;Z)V

    .line 1265
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->b(Lcom/inmobi/androidsdk/IMAdView;Z)V

    .line 1266
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->c(Lcom/inmobi/androidsdk/IMAdView;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1270
    :catchall_0
    move-exception v0

    .line 1271
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/IMAdView;->a()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1272
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView$2;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v1, v3, v4}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;ILcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V

    .line 1275
    :cond_5
    throw v0

    .line 1264
    :cond_6
    const/4 v1, 0x1

    goto :goto_3
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1281
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1285
    return-void
.end method
