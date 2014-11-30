.class public Lc/a/a/r;
.super Lc/a/a/a/d;
.source "MutableDateTime.java"

# interfaces
.implements Lc/a/a/v;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Lc/a/a/c;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lc/a/a/a/d;-><init>()V

    .line 173
    return-void
.end method

.method public constructor <init>(JLc/a/a/i;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1, p2, p3}, Lc/a/a/a/d;-><init>(JLc/a/a/i;)V

    .line 224
    return-void
.end method


# virtual methods
.method public a(Lc/a/a/d;)Lc/a/a/s;
    .locals 3

    .prologue
    .line 1041
    if-nez p1, :cond_0

    .line 1042
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The DateTimeFieldType must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1044
    :cond_0
    invoke-virtual {p0}, Lc/a/a/r;->b()Lc/a/a/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/a/a/d;->a(Lc/a/a/a;)Lc/a/a/c;

    move-result-object v0

    .line 1045
    invoke-virtual {v0}, Lc/a/a/c;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1046
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1048
    :cond_1
    new-instance v1, Lc/a/a/s;

    invoke-direct {v1, p0, v0}, Lc/a/a/s;-><init>(Lc/a/a/r;Lc/a/a/c;)V

    return-object v1
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lc/a/a/r;->b:I

    packed-switch v0, :pswitch_data_0

    .line 473
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Lc/a/a/a/d;->a(J)V

    .line 474
    return-void

    .line 458
    :pswitch_1
    iget-object v0, p0, Lc/a/a/r;->a:Lc/a/a/c;

    invoke-virtual {v0, p1, p2}, Lc/a/a/c;->d(J)J

    move-result-wide p1

    goto :goto_0

    .line 461
    :pswitch_2
    iget-object v0, p0, Lc/a/a/r;->a:Lc/a/a/c;

    invoke-virtual {v0, p1, p2}, Lc/a/a/c;->e(J)J

    move-result-wide p1

    goto :goto_0

    .line 464
    :pswitch_3
    iget-object v0, p0, Lc/a/a/r;->a:Lc/a/a/c;

    invoke-virtual {v0, p1, p2}, Lc/a/a/c;->f(J)J

    move-result-wide p1

    goto :goto_0

    .line 467
    :pswitch_4
    iget-object v0, p0, Lc/a/a/r;->a:Lc/a/a/c;

    invoke-virtual {v0, p1, p2}, Lc/a/a/c;->g(J)J

    move-result-wide p1

    goto :goto_0

    .line 470
    :pswitch_5
    iget-object v0, p0, Lc/a/a/r;->a:Lc/a/a/c;

    invoke-virtual {v0, p1, p2}, Lc/a/a/c;->h(J)J

    move-result-wide p1

    goto :goto_0

    .line 454
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1236
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1237
    :catch_0
    move-exception v0

    .line 1238
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Clone error"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1249
    invoke-static {}, Lc/a/a/d/y;->b()Lc/a/a/d/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/a/a/d/c;->a(Lc/a/a/y;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
