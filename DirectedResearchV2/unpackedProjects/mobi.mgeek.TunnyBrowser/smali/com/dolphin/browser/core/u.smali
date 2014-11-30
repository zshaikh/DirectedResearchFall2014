.class final Lcom/dolphin/browser/core/u;
.super Ljava/lang/Object;
.source "NetworkBoost.java"

# interfaces
.implements Lcom/dolphin/browser/core/x;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/core/TabManager;Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;Z)V
    .locals 5

    .prologue
    .line 171
    invoke-static {}, Lcom/dolphin/browser/core/t;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Append preloaded page(%s) to current tab."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p3}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 172
    check-cast p2, Lcom/dolphin/browser/core/n;

    invoke-virtual {p2, p3}, Lcom/dolphin/browser/core/n;->b(Lcom/dolphin/browser/core/ITab;)V

    .line 173
    return-void
.end method
