.class public Lcom/dolphin/browser/push/v;
.super Ljava/lang/Object;
.source "PushMessage.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/dolphin/browser/push/v;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/dolphin/browser/push/a/a;


# direct methods
.method public constructor <init>(IILcom/dolphin/browser/push/a/a;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/dolphin/browser/push/v;->a:I

    .line 15
    iput p2, p0, Lcom/dolphin/browser/push/v;->b:I

    .line 16
    iput-object p3, p0, Lcom/dolphin/browser/push/v;->c:Lcom/dolphin/browser/push/a/a;

    .line 17
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/dolphin/browser/push/v;->a:I

    return v0
.end method

.method public a(Lcom/dolphin/browser/push/v;)I
    .locals 2

    .prologue
    .line 37
    iget v0, p0, Lcom/dolphin/browser/push/v;->a:I

    iget v1, p1, Lcom/dolphin/browser/push/v;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/dolphin/browser/push/v;->b:I

    return v0
.end method

.method public c()Lcom/dolphin/browser/push/a/a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dolphin/browser/push/v;->c:Lcom/dolphin/browser/push/a/a;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 6
    check-cast p1, Lcom/dolphin/browser/push/v;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/push/v;->a(Lcom/dolphin/browser/push/v;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 44
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/dolphin/browser/push/v;

    if-eqz v1, :cond_0

    .line 45
    iget v1, p0, Lcom/dolphin/browser/push/v;->a:I

    check-cast p1, Lcom/dolphin/browser/push/v;

    iget v2, p1, Lcom/dolphin/browser/push/v;->a:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 47
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/dolphin/browser/push/v;->a:I

    return v0
.end method
