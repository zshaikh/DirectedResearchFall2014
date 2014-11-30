.class Lcom/dolphin/browser/ui/launcher/j;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/dolphin/browser/launcher/bi;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/launcher/g;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/launcher/g;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/dolphin/browser/ui/launcher/j;->a:Lcom/dolphin/browser/ui/launcher/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/launcher/bi;Lcom/dolphin/browser/launcher/bi;)I
    .locals 5

    .prologue
    .line 376
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/bi;->s()I

    move-result v0

    .line 377
    invoke-virtual {p2}, Lcom/dolphin/browser/launcher/bi;->s()I

    move-result v1

    .line 378
    if-eq v0, v1, :cond_0

    .line 379
    sub-int/2addr v0, v1

    .line 388
    :goto_0
    return v0

    .line 381
    :cond_0
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/bi;->o()I

    move-result v0

    int-to-long v0, v0

    .line 382
    invoke-virtual {p2}, Lcom/dolphin/browser/launcher/bi;->o()I

    move-result v2

    int-to-long v2, v2

    .line 383
    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    .line 384
    const/4 v0, -0x1

    goto :goto_0

    .line 385
    :cond_1
    cmp-long v0, v2, v0

    if-gez v0, :cond_2

    .line 386
    const/4 v0, 0x1

    goto :goto_0

    .line 388
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 371
    check-cast p1, Lcom/dolphin/browser/launcher/bi;

    check-cast p2, Lcom/dolphin/browser/launcher/bi;

    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/ui/launcher/j;->a(Lcom/dolphin/browser/launcher/bi;Lcom/dolphin/browser/launcher/bi;)I

    move-result v0

    return v0
.end method
