.class final Lcom/dolphin/browser/core/v;
.super Ljava/lang/Object;
.source "NetworkBoost.java"

# interfaces
.implements Lcom/dolphin/browser/core/x;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/core/TabManager;Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;Z)V
    .locals 5

    .prologue
    .line 181
    invoke-static {}, Lcom/dolphin/browser/core/t;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Open preloaded page(%s) in new tab."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p3}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 182
    invoke-virtual {p1, p2, p3, p4}, Lcom/dolphin/browser/core/TabManager;->a(Lcom/dolphin/browser/core/ITab;Lcom/dolphin/browser/core/ITab;Z)Z

    .line 183
    return-void
.end method
