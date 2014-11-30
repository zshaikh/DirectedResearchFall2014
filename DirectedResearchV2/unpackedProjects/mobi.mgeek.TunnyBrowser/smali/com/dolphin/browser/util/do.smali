.class final Lcom/dolphin/browser/util/do;
.super Lcom/dolphin/browser/util/f;
.source "UpgradeHomeDataHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/f",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/dolphin/browser/launcher/bi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/dolphin/browser/util/do;->a:Z

    invoke-direct {p0}, Lcom/dolphin/browser/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/dolphin/browser/launcher/bi;
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/dolphin/browser/util/do;->a:Z

    invoke-static {v0}, Lcom/dolphin/browser/preload/c;->a(Z)Lcom/dolphin/browser/launcher/bi;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/util/do;->a([Ljava/lang/Void;)Lcom/dolphin/browser/launcher/bi;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/dolphin/browser/launcher/bi;)V
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/dolphin/browser/util/do;->a:Z

    invoke-static {p1, v0}, Lcom/dolphin/browser/preload/c;->a(Lcom/dolphin/browser/launcher/bi;Z)V

    .line 42
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcom/dolphin/browser/launcher/bi;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/util/do;->a(Lcom/dolphin/browser/launcher/bi;)V

    return-void
.end method
