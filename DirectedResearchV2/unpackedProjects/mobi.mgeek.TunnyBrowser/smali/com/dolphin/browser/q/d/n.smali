.class Lcom/dolphin/browser/q/d/n;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Lcom/dolphin/browser/q/d/d;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/d/r;

.field final synthetic b:Lcom/dolphin/browser/q/d/k;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/d/k;Lcom/dolphin/browser/q/d/r;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/dolphin/browser/q/d/n;->b:Lcom/dolphin/browser/q/d/k;

    iput-object p2, p0, Lcom/dolphin/browser/q/d/n;->a:Lcom/dolphin/browser/q/d/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/dolphin/browser/q/d/n;->b:Lcom/dolphin/browser/q/d/k;

    invoke-static {v0}, Lcom/dolphin/browser/q/d/k;->a(Lcom/dolphin/browser/q/d/k;)Lcom/dolphin/browser/q/d/ak;

    move-result-object v0

    const-string v1, "statuses/update_with_media.json"

    iget-object v2, p0, Lcom/dolphin/browser/q/d/n;->a:Lcom/dolphin/browser/q/d/r;

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/q/d/ak;->a(Ljava/lang/String;Lcom/dolphin/browser/q/d/r;)Ljava/lang/String;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/dolphin/browser/q/d/n;->b:Lcom/dolphin/browser/q/d/k;

    invoke-virtual {v1}, Lcom/dolphin/browser/q/d/k;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
