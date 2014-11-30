.class Lcom/dolphin/browser/q/d/o;
.super Ljava/lang/Object;
.source "Twitter.java"

# interfaces
.implements Lcom/dolphin/browser/q/d/d;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/d/k;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/d/k;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/dolphin/browser/q/d/o;->a:Lcom/dolphin/browser/q/d/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 198
    iget-object v0, p0, Lcom/dolphin/browser/q/d/o;->a:Lcom/dolphin/browser/q/d/k;

    invoke-static {v0}, Lcom/dolphin/browser/q/d/k;->a(Lcom/dolphin/browser/q/d/k;)Lcom/dolphin/browser/q/d/ak;

    move-result-object v0

    const-string v2, "friends/ids.json?"

    invoke-virtual {v0, v2, v1}, Lcom/dolphin/browser/q/d/ak;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 200
    iget-object v2, p0, Lcom/dolphin/browser/q/d/o;->a:Lcom/dolphin/browser/q/d/k;

    invoke-virtual {v2}, Lcom/dolphin/browser/q/d/k;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
