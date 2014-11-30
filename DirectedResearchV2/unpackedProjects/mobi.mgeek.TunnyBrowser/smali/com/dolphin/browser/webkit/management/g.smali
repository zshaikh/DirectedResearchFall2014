.class Lcom/dolphin/browser/webkit/management/g;
.super Lcom/dolphin/browser/util/f;
.source "EngineStrategyManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/webkit/management/EngineStrategyManager;)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lcom/dolphin/browser/webkit/management/g;->a:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 648
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/webkit/management/g;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/dolphin/browser/webkit/management/g;->a:Lcom/dolphin/browser/webkit/management/EngineStrategyManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/webkit/management/EngineStrategyManager;->h()V

    .line 654
    const/4 v0, 0x0

    return-object v0
.end method
