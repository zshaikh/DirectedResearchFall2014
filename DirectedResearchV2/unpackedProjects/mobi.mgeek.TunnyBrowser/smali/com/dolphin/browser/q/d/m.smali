.class Lcom/dolphin/browser/q/d/m;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Lcom/dolphin/browser/q/d/d;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/dolphin/browser/q/d/k;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/d/k;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/dolphin/browser/q/d/m;->b:Lcom/dolphin/browser/q/d/k;

    iput-object p2, p0, Lcom/dolphin/browser/q/d/m;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "status"

    iget-object v3, p0, Lcom/dolphin/browser/q/d/m;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v1, p0, Lcom/dolphin/browser/q/d/m;->b:Lcom/dolphin/browser/q/d/k;

    invoke-static {v1}, Lcom/dolphin/browser/q/d/k;->a(Lcom/dolphin/browser/q/d/k;)Lcom/dolphin/browser/q/d/ak;

    move-result-object v1

    const-string v2, "statuses/update.json?"

    invoke-virtual {v1, v2, v0}, Lcom/dolphin/browser/q/d/ak;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/dolphin/browser/q/d/m;->b:Lcom/dolphin/browser/q/d/k;

    invoke-virtual {v1}, Lcom/dolphin/browser/q/d/k;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
