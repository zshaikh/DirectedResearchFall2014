.class Lcom/dolphin/browser/core/at;
.super Ljava/lang/Object;
.source "TabManager.java"

# interfaces
.implements Lcom/dolphin/browser/util/dh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dolphin/browser/util/dh",
        "<",
        "Lcom/dolphin/browser/core/ITab;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/core/TabManager;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/core/TabManager;)V
    .locals 0

    .prologue
    .line 1463
    iput-object p1, p0, Lcom/dolphin/browser/core/at;->a:Lcom/dolphin/browser/core/TabManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/dolphin/browser/core/at;->a:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->o()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1463
    invoke-virtual {p0}, Lcom/dolphin/browser/core/at;->a()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    return-object v0
.end method
