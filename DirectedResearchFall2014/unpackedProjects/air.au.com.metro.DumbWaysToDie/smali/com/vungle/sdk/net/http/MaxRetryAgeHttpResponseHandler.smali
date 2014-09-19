.class public abstract Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;
.super Lcom/vungle/sdk/ak;
.source "vungle"


# instance fields
.field public a:I

.field b:I

.field c:J

.field private d:J

.field private e:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/vungle/sdk/ak;-><init>()V

    .line 32
    const/16 v0, 0x64

    iput v0, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->a:I

    .line 49
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->d:J

    .line 54
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->e:J

    .line 61
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;-><init>(C)V

    .line 65
    return-void
.end method

.method private constructor <init>(C)V
    .locals 2
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/vungle/sdk/ak;-><init>()V

    .line 32
    const/16 v0, 0x64

    iput v0, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->a:I

    .line 49
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->d:J

    .line 54
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->e:J

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->b:I

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->c:J

    .line 74
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/vungle/sdk/ah;Lcom/vungle/sdk/aj;Lcom/vungle/sdk/am;)V
.end method

.method public b(Landroid/os/Parcel;)Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;
    .locals 2
    .parameter

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->a:I

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->b:I

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->c:J

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->d:J

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->e:J

    .line 198
    return-object p0
.end method

.method public b(Lcom/vungle/sdk/ah;Lcom/vungle/sdk/aj;Lcom/vungle/sdk/am;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "Retrying "

    .line 98
    invoke-virtual {p2}, Lcom/vungle/sdk/aj;->a()I

    move-result v0

    .line 99
    div-int/lit8 v1, v0, 0x64

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    move v1, v9

    :goto_0
    if-eqz v1, :cond_2

    .line 100
    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->a(Lcom/vungle/sdk/ah;Lcom/vungle/sdk/aj;Lcom/vungle/sdk/am;)V

    .line 136
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v8

    .line 99
    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p1}, Lcom/vungle/sdk/ah;->j()Lcom/vungle/sdk/al;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Lcom/vungle/sdk/al;->b()I

    move-result v2

    iget v3, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->a:I

    if-lez v3, :cond_3

    iget v3, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->a:I

    if-lt v2, v3, :cond_3

    move v2, v9

    :goto_2
    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/vungle/sdk/al;->a()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->c:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    iget-wide v4, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->c:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    move v2, v9

    :goto_3
    if-nez v2, :cond_0

    .line 109
    invoke-static {v0}, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {v1}, Lcom/vungle/sdk/al;->c()I

    move-result v2

    .line 111
    invoke-static {v0}, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->b(I)Z

    move-result v0

    .line 113
    if-nez v0, :cond_7

    .line 115
    invoke-virtual {v1}, Lcom/vungle/sdk/al;->e()I

    move-result v1

    .line 118
    :goto_4
    iget v2, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->b:I

    if-lez v2, :cond_5

    iget v2, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->b:I

    if-lt v1, v2, :cond_5

    move v2, v9

    :goto_5
    if-nez v2, :cond_0

    .line 119
    if-eqz v0, :cond_6

    .line 120
    invoke-virtual {p0, v1}, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->c(I)J

    move-result-wide v0

    .line 121
    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Retrying "

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " request in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-interface {p3, p1, v0, v1}, Lcom/vungle/sdk/am;->a(Lcom/vungle/sdk/ah;J)V

    goto :goto_1

    :cond_3
    move v2, v8

    .line 105
    goto :goto_2

    :cond_4
    move v2, v8

    goto :goto_3

    :cond_5
    move v2, v8

    .line 118
    goto :goto_5

    .line 125
    :cond_6
    sget-object v0, Lcom/vungle/sdk/IVungleConstants;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Retrying "

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " request soon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-interface {p3, p1}, Lcom/vungle/sdk/am;->a(Lcom/vungle/sdk/ah;)V

    goto/16 :goto_1

    :cond_7
    move v1, v2

    goto :goto_4
.end method

.method protected final c(I)J
    .locals 6
    .parameter

    .prologue
    .line 160
    if-gtz p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->d:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4000

    const/4 v4, 0x1

    sub-int v4, p1, v4

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->e:J

    long-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-long v0, v0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "parcel"
    .parameter

    .prologue
    .line 184
    iget v0, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget v0, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-wide v0, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 187
    iget-wide v0, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 188
    iget-wide v0, p0, Lcom/vungle/sdk/net/http/MaxRetryAgeHttpResponseHandler;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 189
    return-void
.end method
