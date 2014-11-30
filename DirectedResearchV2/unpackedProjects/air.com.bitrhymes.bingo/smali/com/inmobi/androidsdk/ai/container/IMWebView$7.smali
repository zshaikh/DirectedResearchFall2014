.class Lcom/inmobi/androidsdk/ai/container/IMWebView$7;
.super Ljava/lang/Object;
.source "IMWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/ai/container/IMWebView;->changeContentAreaForInterstitials(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/ai/container/IMWebView;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$7;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 3461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 3464
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3473
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 3466
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 3470
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 3464
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
