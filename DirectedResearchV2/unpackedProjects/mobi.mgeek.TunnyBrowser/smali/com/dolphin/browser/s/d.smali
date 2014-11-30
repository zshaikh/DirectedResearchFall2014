.class Lcom/dolphin/browser/s/d;
.super Ljava/lang/Object;
.source "SparkManager.java"

# interfaces
.implements Lcom/dolphin/browser/s/k;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/s/b;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/s/b;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/dolphin/browser/s/d;->a:Lcom/dolphin/browser/s/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/s/b;)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/dolphin/browser/s/d;->a:Lcom/dolphin/browser/s/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/s/b;->a(Lcom/dolphin/browser/s/b;Lcom/dolphin/browser/s/q;)Lcom/dolphin/browser/s/q;

    .line 133
    iget-object v0, p0, Lcom/dolphin/browser/s/d;->a:Lcom/dolphin/browser/s/b;

    iget-object v1, p0, Lcom/dolphin/browser/s/d;->a:Lcom/dolphin/browser/s/b;

    invoke-static {v1}, Lcom/dolphin/browser/s/b;->a(Lcom/dolphin/browser/s/b;)Lcom/dolphin/browser/s/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/s/b;->a(Lcom/dolphin/browser/s/q;)V

    .line 134
    return-void
.end method

.method public a(Lcom/dolphin/browser/s/b;Lcom/dolphin/browser/s/q;)V
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dolphin/browser/s/d;->a:Lcom/dolphin/browser/s/b;

    invoke-static {v0}, Lcom/dolphin/browser/s/b;->a(Lcom/dolphin/browser/s/b;)Lcom/dolphin/browser/s/q;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/dolphin/browser/s/q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/s/d;->a:Lcom/dolphin/browser/s/b;

    invoke-static {v0}, Lcom/dolphin/browser/s/b;->a(Lcom/dolphin/browser/s/b;)Lcom/dolphin/browser/s/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/s/q;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/s/d;->a:Lcom/dolphin/browser/s/b;

    invoke-static {v0}, Lcom/dolphin/browser/s/b;->a(Lcom/dolphin/browser/s/b;)Lcom/dolphin/browser/s/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/s/q;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->e(Z)V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/s/d;->a:Lcom/dolphin/browser/s/b;

    invoke-static {v0, p2}, Lcom/dolphin/browser/s/b;->a(Lcom/dolphin/browser/s/b;Lcom/dolphin/browser/s/q;)Lcom/dolphin/browser/s/q;

    .line 125
    iget-object v0, p0, Lcom/dolphin/browser/s/d;->a:Lcom/dolphin/browser/s/b;

    iget-object v1, p0, Lcom/dolphin/browser/s/d;->a:Lcom/dolphin/browser/s/b;

    invoke-static {v1}, Lcom/dolphin/browser/s/b;->a(Lcom/dolphin/browser/s/b;)Lcom/dolphin/browser/s/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/s/b;->a(Lcom/dolphin/browser/s/q;)V

    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/s/d;->a:Lcom/dolphin/browser/s/b;

    invoke-virtual {p2}, Lcom/dolphin/browser/s/q;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/dolphin/browser/s/q;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/dolphin/browser/s/q;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/dolphin/browser/s/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
