.class Lcom/inmobi/androidsdk/IMAdView$1;
.super Ljava/lang/Object;
.source "IMAdView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    .line 1201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1206
    const-string v0, "InMobiAndroidSDK_3.6.2"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTouch: view: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    invoke-virtual {p1}, Landroid/view/View;->requestFocusFromTouch()Z

    move v0, v3

    .line 1232
    :goto_0
    return v0

    .line 1211
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->b(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->b(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1212
    invoke-virtual {p1}, Landroid/view/View;->requestFocusFromTouch()Z

    move v0, v3

    .line 1213
    goto :goto_0

    .line 1215
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 1216
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->c(Lcom/inmobi/androidsdk/IMAdView;)V

    .line 1217
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0, p2}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;Landroid/view/MotionEvent;)V

    move v0, v3

    .line 1218
    goto :goto_0

    .line 1219
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    .line 1220
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->d(Lcom/inmobi/androidsdk/IMAdView;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->e(Lcom/inmobi/androidsdk/IMAdView;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1221
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->f(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/impl/IMAdUnit;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1222
    :cond_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->c(Lcom/inmobi/androidsdk/IMAdView;)V

    move v0, v3

    .line 1223
    goto :goto_0

    .line 1225
    :cond_4
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->g(Lcom/inmobi/androidsdk/IMAdView;)V

    move v0, v3

    .line 1226
    goto :goto_0

    .line 1227
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 1228
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->c(Lcom/inmobi/androidsdk/IMAdView;)V

    :cond_6
    :goto_1
    move v0, v3

    .line 1232
    goto :goto_0

    .line 1229
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 1230
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$1;->a:Lcom/inmobi/androidsdk/IMAdView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView;->c(Lcom/inmobi/androidsdk/IMAdView;)V

    goto :goto_1
.end method
