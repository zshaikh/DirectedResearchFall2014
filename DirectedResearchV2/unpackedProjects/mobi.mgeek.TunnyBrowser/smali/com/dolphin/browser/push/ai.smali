.class Lcom/dolphin/browser/push/ai;
.super Ljava/lang/Object;
.source "PushProcessor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/dolphin/browser/push/data/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/push/ag;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/push/ag;)V
    .locals 0

    .prologue
    .line 988
    iput-object p1, p0, Lcom/dolphin/browser/push/ai;->a:Lcom/dolphin/browser/push/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/push/data/h;Lcom/dolphin/browser/push/data/h;)I
    .locals 2

    .prologue
    .line 992
    invoke-virtual {p1}, Lcom/dolphin/browser/push/data/h;->a()I

    move-result v0

    invoke-virtual {p2}, Lcom/dolphin/browser/push/data/h;->a()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 988
    check-cast p1, Lcom/dolphin/browser/push/data/h;

    check-cast p2, Lcom/dolphin/browser/push/data/h;

    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/push/ai;->a(Lcom/dolphin/browser/push/data/h;Lcom/dolphin/browser/push/data/h;)I

    move-result v0

    return v0
.end method
