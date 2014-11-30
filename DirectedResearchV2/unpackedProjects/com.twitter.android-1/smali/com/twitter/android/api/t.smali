.class public final Lcom/twitter/android/api/t;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:Lcom/twitter/android/api/c;

.field private final i:I

.field private volatile j:I


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/twitter/android/api/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/twitter/android/api/t;->a:J

    iput-object p3, p0, Lcom/twitter/android/api/t;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/twitter/android/api/t;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/twitter/android/api/t;->d:Ljava/lang/String;

    iput p6, p0, Lcom/twitter/android/api/t;->e:I

    iput p7, p0, Lcom/twitter/android/api/t;->f:I

    iput p8, p0, Lcom/twitter/android/api/t;->g:I

    iput-object p9, p0, Lcom/twitter/android/api/t;->h:Lcom/twitter/android/api/c;

    iput p10, p0, Lcom/twitter/android/api/t;->i:I

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/twitter/android/api/t;->a:J

    return-wide v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/api/t;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/api/t;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/api/t;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/twitter/android/api/t;->e:I

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/twitter/android/api/t;->f:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/twitter/android/api/t;->g:I

    return v0
.end method

.method public final h()Lcom/twitter/android/api/c;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/api/t;->h:Lcom/twitter/android/api/c;

    return-object v0
.end method

.method public final hashCode()I
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lcom/twitter/android/api/t;->j:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/twitter/android/api/t;->j:I

    :goto_0
    return v0

    :cond_0
    iget-wide v2, p0, Lcom/twitter/android/api/t;->a:J

    iget-wide v4, p0, Lcom/twitter/android/api/t;->a:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/android/api/t;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/api/t;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/twitter/android/api/t;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/api/t;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/twitter/android/api/t;->d:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/twitter/android/api/t;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/twitter/android/api/t;->i:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/twitter/android/api/t;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/twitter/android/api/t;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/twitter/android/api/t;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/twitter/android/api/t;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/twitter/android/api/t;->j:I

    iget v0, p0, Lcom/twitter/android/api/t;->j:I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/twitter/android/api/t;->i:I

    return v0
.end method
