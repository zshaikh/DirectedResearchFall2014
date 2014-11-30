.class Lcom/dolphin/browser/theme/bb;
.super Lcom/dolphin/browser/util/f;
.source "ThemePromotionManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/theme/ba;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/ba;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/dolphin/browser/theme/bb;->a:Lcom/dolphin/browser/theme/ba;

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/theme/bb;->a:Lcom/dolphin/browser/theme/ba;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ba;->e()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/theme/bb;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/dolphin/browser/theme/ar;->a()Lcom/dolphin/browser/theme/i;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/ar;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ar;->i()V

    .line 96
    :cond_0
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 85
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/theme/bb;->a(Ljava/lang/Boolean;)V

    return-void
.end method
