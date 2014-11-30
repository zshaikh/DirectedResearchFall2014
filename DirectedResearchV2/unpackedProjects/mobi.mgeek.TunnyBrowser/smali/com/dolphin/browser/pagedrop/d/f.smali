.class public Lcom/dolphin/browser/pagedrop/d/f;
.super Ljava/lang/Object;
.source "ShareTabInfoProtocol.java"

# interfaces
.implements Lcom/dolphin/browser/pagedrop/d/a;


# instance fields
.field private a:[B

.field private b:B

.field private c:B

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:[B

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(BB)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-byte p1, p0, Lcom/dolphin/browser/pagedrop/d/f;->b:B

    .line 44
    iput-byte p2, p0, Lcom/dolphin/browser/pagedrop/d/f;->c:B

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/pagedrop/d/f;->i:I

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/d/f;->k:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private b([BI)I
    .locals 3

    .prologue
    const/16 v1, 0x1c00

    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/f;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/f;->h:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dolphin/browser/pagedrop/d/f;->i:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dolphin/browser/pagedrop/d/f;->i:I

    if-le v0, v1, :cond_1

    .line 137
    :cond_0
    add-int/lit8 v1, p2, 0x1

    aput-byte v2, p1, p2

    .line 138
    add-int/lit8 v0, v1, 0x1

    aput-byte v2, p1, v1

    .line 146
    :goto_0
    return v0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/f;->h:[B

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/dolphin/browser/pagedrop/d/f;->i:I

    if-nez v0, :cond_3

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/f;->k:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1}, Lcom/dolphin/browser/pagedrop/e/c;->a(Ljava/lang/String;[BII)I

    move-result v0

    goto :goto_0

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/f;->h:[B

    iget v1, p0, Lcom/dolphin/browser/pagedrop/d/f;->i:I

    invoke-static {p1, p2, v0, v1}, Lcom/dolphin/browser/pagedrop/e/c;->a([BI[BI)I

    move-result v0

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/f;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-byte v0, p0, Lcom/dolphin/browser/pagedrop/d/f;->b:B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/f;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 14

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Lcom/dolphin/browser/pagedrop/d/f;->c()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 224
    :goto_0
    return v0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/f;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/e/c;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 155
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/f;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/e/c;->a(Ljava/lang/String;)[B

    move-result-object v3

    .line 156
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/f;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/e/c;->a(Ljava/lang/String;)[B

    move-result-object v4

    .line 157
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/f;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/e/c;->a(Ljava/lang/String;)[B

    move-result-object v5

    .line 159
    if-eqz v2, :cond_1

    array-length v0, v2

    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    array-length v0, v4

    if-eqz v0, :cond_1

    if-eqz v5, :cond_1

    array-length v0, v5

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    .line 160
    goto :goto_0

    .line 165
    :cond_2
    array-length v0, v2

    .line 166
    array-length v6, v3

    .line 167
    array-length v7, v4

    .line 168
    array-length v8, v5

    .line 173
    iput v1, p0, Lcom/dolphin/browser/pagedrop/d/f;->i:I

    .line 174
    const-string v9, ""

    iput-object v9, p0, Lcom/dolphin/browser/pagedrop/d/f;->k:Ljava/lang/String;

    .line 177
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v7

    add-int/lit8 v0, v0, 0x2

    iget v6, p0, Lcom/dolphin/browser/pagedrop/d/f;->i:I

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v8

    .line 178
    const/16 v6, 0x1ff7

    if-le v0, v6, :cond_3

    move v0, v1

    .line 179
    goto :goto_0

    .line 183
    :cond_3
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dolphin/browser/pagedrop/d/f;->a:[B

    .line 184
    iget-object v6, p0, Lcom/dolphin/browser/pagedrop/d/f;->a:[B

    .line 187
    aput-byte v11, v6, v1

    .line 188
    iget-byte v0, p0, Lcom/dolphin/browser/pagedrop/d/f;->b:B

    aput-byte v0, v6, v11

    .line 189
    invoke-static {v13}, Lcom/dolphin/browser/pagedrop/e/c;->a(S)[B

    move-result-object v0

    invoke-static {v6, v10, v0, v10}, Lcom/dolphin/browser/pagedrop/e/c;->b([BI[BI)I

    .line 193
    iget-byte v0, p0, Lcom/dolphin/browser/pagedrop/d/f;->c:B

    aput-byte v0, v6, v12

    .line 195
    iget v0, p0, Lcom/dolphin/browser/pagedrop/d/f;->d:I

    if-nez v0, :cond_4

    invoke-static {}, Lcom/dolphin/browser/pagedrop/e/c;->a()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/dolphin/browser/pagedrop/d/f;->d:I

    .line 196
    iget v0, p0, Lcom/dolphin/browser/pagedrop/d/f;->d:I

    invoke-static {v0}, Lcom/dolphin/browser/pagedrop/e/c;->a(I)[B

    move-result-object v0

    invoke-static {v6, v13, v0, v12}, Lcom/dolphin/browser/pagedrop/e/c;->b([BI[BI)I

    .line 199
    const/16 v0, 0xb

    .line 201
    invoke-static {v6, v0, v2}, Lcom/dolphin/browser/pagedrop/e/c;->a([BI[B)I

    move-result v0

    .line 204
    invoke-static {v6, v0, v3}, Lcom/dolphin/browser/pagedrop/e/c;->a([BI[B)I

    move-result v0

    .line 207
    invoke-static {v6, v0, v4}, Lcom/dolphin/browser/pagedrop/e/c;->a([BI[B)I

    move-result v0

    .line 210
    invoke-direct {p0, v6, v0}, Lcom/dolphin/browser/pagedrop/d/f;->b([BI)I

    move-result v0

    .line 213
    invoke-static {v6, v0, v5}, Lcom/dolphin/browser/pagedrop/e/c;->a([BI[B)I

    move-result v0

    .line 216
    const/16 v2, 0x2000

    if-lt v0, v2, :cond_5

    move v0, v1

    .line 217
    goto/16 :goto_0

    .line 195
    :cond_4
    iget v0, p0, Lcom/dolphin/browser/pagedrop/d/f;->d:I

    goto :goto_1

    .line 221
    :cond_5
    add-int/lit8 v1, v0, -0x4

    sub-int/2addr v1, v13

    add-int/lit8 v1, v1, -0x2

    const v2, 0xffff

    and-int/2addr v1, v2

    int-to-short v1, v1

    invoke-static {v1}, Lcom/dolphin/browser/pagedrop/e/c;->a(S)[B

    move-result-object v1

    .line 222
    const/16 v2, 0x9

    invoke-static {v6, v2, v1, v10}, Lcom/dolphin/browser/pagedrop/e/c;->b([BI[BI)I

    goto/16 :goto_0
.end method

.method public a(B)V
    .locals 0

    .prologue
    .line 54
    iput-byte p1, p0, Lcom/dolphin/browser/pagedrop/d/f;->c:B

    .line 55
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/dolphin/browser/pagedrop/d/f;->d:I

    .line 59
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/d/f;->e:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public a([BI)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/d/f;->h:[B

    .line 79
    iput p2, p0, Lcom/dolphin/browser/pagedrop/d/f;->i:I

    .line 80
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/d/f;->j:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public b()[B
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/dolphin/browser/pagedrop/d/f;->a:[B

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/d/f;->f:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/d/f;->g:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/dolphin/browser/pagedrop/d/f;->k:Ljava/lang/String;

    .line 84
    return-void
.end method
