.class public Lcom/dolphin/browser/webkit/management/f;
.super Ljava/lang/Object;
.source "EngineStrategy.java"


# instance fields
.field private final a:I

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/dolphin/browser/webkit/management/f;->a:I

    .line 18
    iput-boolean p2, p0, Lcom/dolphin/browser/webkit/management/f;->c:Z

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/webkit/management/f;->b:Z

    .line 20
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/dolphin/browser/webkit/management/f;->b:Z

    .line 28
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/dolphin/browser/webkit/management/f;->c:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/dolphin/browser/webkit/management/f;->b:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/dolphin/browser/webkit/management/f;

    if-nez v1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/dolphin/browser/webkit/management/f;

    iget v1, p1, Lcom/dolphin/browser/webkit/management/f;->a:I

    iget v2, p0, Lcom/dolphin/browser/webkit/management/f;->a:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/dolphin/browser/webkit/management/f;->a:I

    return v0
.end method
