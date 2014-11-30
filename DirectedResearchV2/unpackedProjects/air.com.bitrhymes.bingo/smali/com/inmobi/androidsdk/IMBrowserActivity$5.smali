.class Lcom/inmobi/androidsdk/IMBrowserActivity$5;
.super Ljava/lang/Object;
.source "IMBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/IMBrowserActivity;->a(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/IMBrowserActivity;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/IMBrowserActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$5;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 189
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 190
    const v0, -0x777778

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 191
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$5;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->b(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$5;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->b(Lcom/inmobi/androidsdk/IMBrowserActivity;)Lcom/inmobi/androidsdk/ai/container/IMWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->goBack()V

    :goto_0
    move v0, v1

    .line 201
    :goto_1
    return v0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMBrowserActivity$5;->a:Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMBrowserActivity;->finish()V

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 198
    const v0, -0xff0001

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    move v0, v1

    .line 199
    goto :goto_1

    :cond_2
    move v0, v1

    .line 201
    goto :goto_1
.end method
