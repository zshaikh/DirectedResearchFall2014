.class public Lcom/dolphin/browser/gesture/ae;
.super Ljava/lang/Object;
.source "Prediction.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/dolphin/browser/gesture/ae;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:D


# direct methods
.method constructor <init>(Ljava/lang/String;D)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ae;->a:Ljava/lang/String;

    .line 26
    iput-wide p2, p0, Lcom/dolphin/browser/gesture/ae;->b:D

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/gesture/ae;)I
    .locals 4

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/dolphin/browser/gesture/ae;->b:D

    iget-wide v2, p1, Lcom/dolphin/browser/gesture/ae;->b:D

    sub-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lcom/dolphin/browser/gesture/ae;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/gesture/ae;->a(Lcom/dolphin/browser/gesture/ae;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ae;->a:Ljava/lang/String;

    return-object v0
.end method
