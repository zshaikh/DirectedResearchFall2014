.class Ldolphin/webkit/id;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ldolphin/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Ldolphin/webkit/WebViewClassic;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 4594
    iput-object p1, p0, Ldolphin/webkit/id;->b:Ldolphin/webkit/WebViewClassic;

    iput-object p2, p0, Ldolphin/webkit/id;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4598
    iget-object v0, p0, Ldolphin/webkit/id;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/id;->a:Ljava/lang/String;

    iget-object v1, p0, Ldolphin/webkit/id;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4599
    iget-object v0, p0, Ldolphin/webkit/id;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->t()V

    .line 4600
    :cond_0
    return-void
.end method
