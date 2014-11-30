.class Lcom/dolphin/browser/gesture/k;
.super Ljava/lang/Object;
.source "GestureManager.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    iput-object p1, p0, Lcom/dolphin/browser/gesture/k;->a:Ljava/lang/String;

    .line 562
    iput-object p2, p0, Lcom/dolphin/browser/gesture/k;->b:Ljava/lang/Integer;

    .line 563
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .prologue
    .line 577
    iput-object p1, p0, Lcom/dolphin/browser/gesture/k;->b:Ljava/lang/Integer;

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/dolphin/browser/gesture/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/dolphin/browser/gesture/k;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public synthetic getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/k;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/k;->b()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 556
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/gesture/k;->a(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
