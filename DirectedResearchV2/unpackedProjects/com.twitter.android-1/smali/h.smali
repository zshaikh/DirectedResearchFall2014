.class public final Lh;
.super Ly;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ly;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lh;->a:I

    iput p4, p0, Lh;->b:I

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(II)Z
    .locals 1

    iget v0, p0, Lh;->a:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lh;->b:I

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a([II)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    aget v2, p1, v1

    iget v3, p0, Lh;->a:I

    if-ne v2, v3, :cond_0

    aget v2, p1, v0

    iget v3, p0, Lh;->b:I

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
