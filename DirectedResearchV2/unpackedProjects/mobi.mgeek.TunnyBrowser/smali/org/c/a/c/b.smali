.class public abstract Lorg/c/a/c/b;
.super Ljava/lang/Object;
.source "AbstractBuffers.java"

# interfaces
.implements Lorg/c/a/c/l;


# instance fields
.field protected final a:Lorg/c/a/c/m;

.field protected final b:I

.field protected final c:Lorg/c/a/c/m;

.field protected final d:I

.field protected final e:Lorg/c/a/c/m;


# direct methods
.method public constructor <init>(Lorg/c/a/c/m;ILorg/c/a/c/m;ILorg/c/a/c/m;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/c/a/c/b;->a:Lorg/c/a/c/m;

    .line 36
    iput p2, p0, Lorg/c/a/c/b;->b:I

    .line 37
    iput-object p3, p0, Lorg/c/a/c/b;->c:Lorg/c/a/c/m;

    .line 38
    iput p4, p0, Lorg/c/a/c/b;->d:I

    .line 39
    iput-object p5, p0, Lorg/c/a/c/b;->e:Lorg/c/a/c/m;

    .line 40
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lorg/c/a/c/b;->d:I

    return v0
.end method

.method protected final a(I)Lorg/c/a/c/f;
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lorg/c/a/c/c;->a:[I

    iget-object v1, p0, Lorg/c/a/c/b;->e:Lorg/c/a/c/m;

    invoke-virtual {v1}, Lorg/c/a/c/m;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 116
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 110
    :pswitch_0
    new-instance v0, Lorg/c/a/c/o;

    invoke-direct {v0, p1}, Lorg/c/a/c/o;-><init>(I)V

    .line 114
    :goto_0
    return-object v0

    .line 112
    :pswitch_1
    new-instance v0, Lorg/c/a/c/b/c;

    invoke-direct {v0, p1}, Lorg/c/a/c/b/c;-><init>(I)V

    goto :goto_0

    .line 114
    :pswitch_2
    new-instance v0, Lorg/c/a/c/b/d;

    invoke-direct {v0, p1}, Lorg/c/a/c/b/d;-><init>(I)V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lorg/c/a/c/f;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-interface {p1}, Lorg/c/a/c/f;->v()I

    move-result v1

    iget v2, p0, Lorg/c/a/c/b;->b:I

    if-ne v1, v2, :cond_0

    .line 128
    sget-object v1, Lorg/c/a/c/c;->a:[I

    iget-object v2, p0, Lorg/c/a/c/b;->a:Lorg/c/a/c/m;

    invoke-virtual {v2}, Lorg/c/a/c/m;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 131
    :pswitch_0
    instance-of v1, p1, Lorg/c/a/c/o;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/c/a/c/b/d;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 133
    :pswitch_1
    instance-of v0, p1, Lorg/c/a/c/b/c;

    goto :goto_0

    .line 135
    :pswitch_2
    instance-of v0, p1, Lorg/c/a/c/b/d;

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public b()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lorg/c/a/c/b;->b:I

    return v0
.end method

.method public final b(Lorg/c/a/c/f;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-interface {p1}, Lorg/c/a/c/f;->v()I

    move-result v1

    iget v2, p0, Lorg/c/a/c/b;->d:I

    if-ne v1, v2, :cond_0

    .line 150
    sget-object v1, Lorg/c/a/c/c;->a:[I

    iget-object v2, p0, Lorg/c/a/c/b;->c:Lorg/c/a/c/m;

    invoke-virtual {v2}, Lorg/c/a/c/m;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 160
    :cond_0
    :goto_0
    return v0

    .line 153
    :pswitch_0
    instance-of v1, p1, Lorg/c/a/c/o;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/c/a/c/b/d;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 155
    :pswitch_1
    instance-of v0, p1, Lorg/c/a/c/b/c;

    goto :goto_0

    .line 157
    :pswitch_2
    instance-of v0, p1, Lorg/c/a/c/b/d;

    goto :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final c()Lorg/c/a/c/f;
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lorg/c/a/c/c;->a:[I

    iget-object v1, p0, Lorg/c/a/c/b;->a:Lorg/c/a/c/m;

    invoke-virtual {v1}, Lorg/c/a/c/m;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 71
    :pswitch_0
    new-instance v0, Lorg/c/a/c/o;

    iget v1, p0, Lorg/c/a/c/b;->b:I

    invoke-direct {v0, v1}, Lorg/c/a/c/o;-><init>(I)V

    .line 75
    :goto_0
    return-object v0

    .line 73
    :pswitch_1
    new-instance v0, Lorg/c/a/c/b/c;

    iget v1, p0, Lorg/c/a/c/b;->b:I

    invoke-direct {v0, v1}, Lorg/c/a/c/b/c;-><init>(I)V

    goto :goto_0

    .line 75
    :pswitch_2
    new-instance v0, Lorg/c/a/c/b/d;

    iget v1, p0, Lorg/c/a/c/b;->b:I

    invoke-direct {v0, v1}, Lorg/c/a/c/b/d;-><init>(I)V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final d()Lorg/c/a/c/f;
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lorg/c/a/c/c;->a:[I

    iget-object v1, p0, Lorg/c/a/c/b;->c:Lorg/c/a/c/m;

    invoke-virtual {v1}, Lorg/c/a/c/m;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 96
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 90
    :pswitch_0
    new-instance v0, Lorg/c/a/c/o;

    iget v1, p0, Lorg/c/a/c/b;->d:I

    invoke-direct {v0, v1}, Lorg/c/a/c/o;-><init>(I)V

    .line 94
    :goto_0
    return-object v0

    .line 92
    :pswitch_1
    new-instance v0, Lorg/c/a/c/b/c;

    iget v1, p0, Lorg/c/a/c/b;->d:I

    invoke-direct {v0, v1}, Lorg/c/a/c/b/c;-><init>(I)V

    goto :goto_0

    .line 94
    :pswitch_2
    new-instance v0, Lorg/c/a/c/b/d;

    iget v1, p0, Lorg/c/a/c/b;->d:I

    invoke-direct {v0, v1}, Lorg/c/a/c/b/d;-><init>(I)V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 166
    const-string v0, "%s [%d,%d]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lorg/c/a/c/b;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lorg/c/a/c/b;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
