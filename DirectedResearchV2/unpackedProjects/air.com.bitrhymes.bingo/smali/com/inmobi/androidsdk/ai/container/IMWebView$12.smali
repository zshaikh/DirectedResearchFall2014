.class Lcom/inmobi/androidsdk/ai/container/IMWebView$12;
.super Ljava/lang/Object;
.source "IMWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$12;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iput-object p2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$12;->b:Ljava/lang/String;

    .line 2109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2113
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$12;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$12;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c(Lcom/inmobi/androidsdk/ai/container/IMWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2115
    if-eqz v0, :cond_0

    .line 2116
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2117
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2118
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2119
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2120
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$12;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->l(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2121
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$12;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2122
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$12;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;->onLeaveApplication()V

    .line 2123
    :cond_0
    return-void
.end method
