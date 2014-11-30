.class Lcom/facebook/FacebookAppLinkResolver$1;
.super Ljava/lang/Object;
.source "FacebookAppLinkResolver.java"

# interfaces
.implements Lb/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/c",
        "<",
        "Ljava/util/Map",
        "<",
        "Landroid/net/Uri;",
        "Lb/a;",
        ">;",
        "Lb/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/FacebookAppLinkResolver;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/facebook/FacebookAppLinkResolver;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/facebook/FacebookAppLinkResolver$1;->this$0:Lcom/facebook/FacebookAppLinkResolver;

    iput-object p2, p0, Lcom/facebook/FacebookAppLinkResolver$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lb/e;)Lb/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/e",
            "<",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lb/a;",
            ">;>;)",
            "Lb/a;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p1}, Lb/e;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/facebook/FacebookAppLinkResolver$1;->val$uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a;

    return-object v0
.end method

.method public bridge synthetic then(Lb/e;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/facebook/FacebookAppLinkResolver$1;->then(Lb/e;)Lb/a;

    move-result-object v0

    return-object v0
.end method
