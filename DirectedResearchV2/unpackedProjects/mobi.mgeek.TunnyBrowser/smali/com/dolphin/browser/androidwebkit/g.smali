.class Lcom/dolphin/browser/androidwebkit/g;
.super Ljava/lang/Object;
.source "MyWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/dolphin/browser/androidwebkit/MyWebView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/androidwebkit/MyWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1762
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/g;->d:Lcom/dolphin/browser/androidwebkit/MyWebView;

    iput-object p2, p0, Lcom/dolphin/browser/androidwebkit/g;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dolphin/browser/androidwebkit/g;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/dolphin/browser/androidwebkit/g;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1767
    :try_start_0
    new-instance v0, Lcom/dolphin/browser/androidwebkit/h;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/androidwebkit/h;-><init>(Lcom/dolphin/browser/androidwebkit/g;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->b(Lcom/dolphin/browser/util/dh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1774
    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1775
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/g;->d:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v0}, Lcom/dolphin/browser/androidwebkit/MyWebView;->n(Lcom/dolphin/browser/androidwebkit/MyWebView;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/androidwebkit/g;->d:Lcom/dolphin/browser/androidwebkit/MyWebView;

    invoke-static {v1}, Lcom/dolphin/browser/androidwebkit/MyWebView;->m(Lcom/dolphin/browser/androidwebkit/MyWebView;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/dolphin/browser/androidwebkit/g;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/dolphin/browser/androidwebkit/g;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1780
    :cond_0
    :goto_0
    return-void

    .line 1777
    :catch_0
    move-exception v0

    .line 1778
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
