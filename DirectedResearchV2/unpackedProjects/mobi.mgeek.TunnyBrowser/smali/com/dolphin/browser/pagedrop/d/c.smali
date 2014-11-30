.class public Lcom/dolphin/browser/pagedrop/d/c;
.super Ljava/lang/Object;
.source "OnLineProtocol.java"

# interfaces
.implements Lcom/dolphin/browser/pagedrop/d/a;


# instance fields
.field private a:[B

.field private b:B

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:[B

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(BLjava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-byte v0, p0, Lcom/dolphin/browser/pagedrop/d/c;->b:B

    .line 49
    iput-byte p1, p0, Lcom/dolphin/browser/pagedrop/d/c;->b:B

    .line 50
    iput-object p2, p0, Lcom/dolphin/browser/pagedrop/d/c;->c:Ljava/lang/String;

    .line 51
    iput v0, p0, Lcom/dolphin/browser/pagedrop/d/c;->f:I

    .line 52
    iput v0, p0, Lcom/dolphin/browser/pagedrop/d/c;->g:I

    .line 53
    iput v0, p0, Lcom/dolphin/browser/pagedrop/d/c;->h:I

    .line 54
    return-void
.end method

.method private a([BI)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/c;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/c;->e:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dolphin/browser/pagedrop/d/c;->f:I

    if-nez v0, :cond_1

    .line 112
    :cond_0
    add-int/lit8 v1, p2, 0x1

    aput-byte v2, p1, p2

    .line 113
    add-int/lit8 v0, v1, 0x1

    aput-byte v2, p1, v1

    .line 121
    :goto_0
    return v0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/c;->e:[B

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/dolphin/browser/pagedrop/d/c;->f:I

    if-nez v0, :cond_3

    .line 118
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/c;->i:Ljava/lang/String;

    const/16 v1, 0x1c00

    invoke-static {v0, p1, p2, v1}, Lcom/dolphin/browser/pagedrop/e/c;->a(Ljava/lang/String;[BII)I

    move-result v0

    goto :goto_0

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/c;->e:[B

    iget v1, p0, Lcom/dolphin/browser/pagedrop/d/c;->f:I

    invoke-static {p1, p2, v0, v1}, Lcom/dolphin/browser/pagedrop/e/c;->a([BI[BI)I

    move-result v0

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/c;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-byte v0, p0, Lcom/dolphin/browser/pagedrop/d/c;->b:B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dolphin/browser/pagedrop/d/c;->f:I

    if-gez v0, :cond_1

    .line 99
    :cond_0
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 9

    .prologue
    const/16 v8, 0x2000

    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0}, Lcom/dolphin/browser/pagedrop/d/c;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/pagedrop/d/c;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/dolphin/browser/pagedrop/e/c;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 131
    iget-object v2, p0, Lcom/dolphin/browser/pagedrop/d/c;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/dolphin/browser/pagedrop/e/c;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 132
    if-eqz v1, :cond_0

    array-length v3, v1

    if-eqz v3, :cond_0

    .line 136
    array-length v3, v1

    iput v3, p0, Lcom/dolphin/browser/pagedrop/d/c;->g:I

    .line 137
    if-eqz v2, :cond_2

    .line 138
    array-length v3, v2

    iput v3, p0, Lcom/dolphin/browser/pagedrop/d/c;->h:I

    .line 141
    :cond_2
    iget v3, p0, Lcom/dolphin/browser/pagedrop/d/c;->f:I

    iget-object v4, p0, Lcom/dolphin/browser/pagedrop/d/c;->i:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/dolphin/browser/pagedrop/e/c;->a(ILjava/lang/String;)J

    move-result-wide v3

    const-wide/32 v5, 0x7fffffff

    and-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, p0, Lcom/dolphin/browser/pagedrop/d/c;->f:I

    .line 142
    iget v3, p0, Lcom/dolphin/browser/pagedrop/d/c;->f:I

    const/16 v4, 0x1c00

    if-le v3, v4, :cond_3

    .line 143
    iput v0, p0, Lcom/dolphin/browser/pagedrop/d/c;->f:I

    .line 144
    const-string v3, ""

    iput-object v3, p0, Lcom/dolphin/browser/pagedrop/d/c;->i:Ljava/lang/String;

    .line 149
    :cond_3
    iget v3, p0, Lcom/dolphin/browser/pagedrop/d/c;->g:I

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/dolphin/browser/pagedrop/d/c;->h:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/dolphin/browser/pagedrop/d/c;->f:I

    add-int/2addr v3, v4

    .line 150
    const/16 v4, 0x1ffc

    if-gt v3, v4, :cond_0

    .line 155
    new-array v3, v8, [B

    iput-object v3, p0, Lcom/dolphin/browser/pagedrop/d/c;->a:[B

    .line 156
    iget-object v3, p0, Lcom/dolphin/browser/pagedrop/d/c;->a:[B

    .line 159
    aput-byte v7, v3, v0

    .line 160
    const/4 v4, 0x2

    iget-byte v5, p0, Lcom/dolphin/browser/pagedrop/d/c;->b:B

    aput-byte v5, v3, v7

    .line 161
    const/4 v5, 0x3

    aput-byte v0, v3, v4

    .line 162
    aput-byte v0, v3, v5

    .line 164
    const/4 v4, 0x6

    .line 167
    invoke-static {v3, v4, v1}, Lcom/dolphin/browser/pagedrop/e/c;->a([BI[B)I

    move-result v1

    .line 170
    invoke-static {v3, v1, v2}, Lcom/dolphin/browser/pagedrop/e/c;->a([BI[B)I

    move-result v1

    .line 173
    invoke-direct {p0, v3, v1}, Lcom/dolphin/browser/pagedrop/d/c;->a([BI)I

    move-result v1

    .line 176
    if-gt v1, v8, :cond_0

    .line 179
    add-int/lit8 v2, v1, -0x2

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x4

    const v4, 0xffff

    and-int/2addr v2, v4

    int-to-short v2, v2

    invoke-static {v2}, Lcom/dolphin/browser/pagedrop/e/c;->a(S)[B

    move-result-object v2

    .line 180
    const/4 v4, 0x4

    aget-byte v5, v2, v0

    aput-byte v5, v3, v4

    .line 181
    const/4 v4, 0x5

    aget-byte v2, v2, v7

    aput-byte v2, v3, v4

    .line 183
    aput-byte v0, v3, v1

    .line 184
    add-int/lit8 v2, v1, 0x1

    aput-byte v0, v3, v2

    .line 185
    add-int/lit8 v2, v1, 0x2

    aput-byte v0, v3, v2

    .line 186
    add-int/lit8 v2, v1, 0x3

    aput-byte v0, v3, v2

    move v0, v1

    .line 188
    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/d/c;->d:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/d/c;->i:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public b()[B
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/c;->a:[B

    return-object v0
.end method
