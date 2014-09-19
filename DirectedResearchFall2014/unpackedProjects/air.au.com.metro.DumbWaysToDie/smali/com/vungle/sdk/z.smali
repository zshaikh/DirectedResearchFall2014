.class public final Lcom/vungle/sdk/z;
.super Ljava/lang/Object;
.source "vungle"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:I

.field public n:J

.field public o:J

.field public p:I

.field public q:I

.field public r:I

.field public s:Lcom/vungle/sdk/aa;

.field private t:J

.field private u:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/vungle/sdk/IVungleConstants;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/vungle/sdk/z;->g:Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/vungle/sdk/IVungleConstants;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/vungle/sdk/z;->i:Ljava/lang/String;

    .line 69
    const/4 v0, 0x3

    iput v0, p0, Lcom/vungle/sdk/z;->l:I

    .line 71
    iput-wide v3, p0, Lcom/vungle/sdk/z;->n:J

    .line 72
    iput-wide v3, p0, Lcom/vungle/sdk/z;->o:J

    .line 73
    iput v2, p0, Lcom/vungle/sdk/z;->p:I

    .line 74
    iput v2, p0, Lcom/vungle/sdk/z;->q:I

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/vungle/sdk/z;->t:J

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/vungle/sdk/z;->u:I

    .line 77
    iput v2, p0, Lcom/vungle/sdk/z;->r:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vungle/sdk/z;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vungle/sdk/z;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 232
    if-lez p1, :cond_0

    .line 233
    iput p1, p0, Lcom/vungle/sdk/z;->u:I

    .line 237
    :goto_0
    iget v0, p0, Lcom/vungle/sdk/z;->u:I

    invoke-static {v0}, Lcom/vungle/sdk/n;->a(I)V

    .line 238
    return-void

    .line 235
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/vungle/sdk/z;->u:I

    goto :goto_0
.end method

.method public final a(J)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x7530

    .line 221
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    .line 222
    :cond_0
    iput-wide p1, p0, Lcom/vungle/sdk/z;->t:J

    .line 226
    :goto_0
    iget-wide v0, p0, Lcom/vungle/sdk/z;->t:J

    invoke-static {v0, v1}, Lcom/vungle/sdk/n;->b(J)V

    .line 227
    return-void

    .line 224
    :cond_1
    iput-wide v2, p0, Lcom/vungle/sdk/z;->t:J

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/vungle/sdk/z;->c:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/vungle/sdk/z;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/sdk/VungleUtil;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/vungle/sdk/z;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/sdk/z;->c:Ljava/lang/String;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/vungle/sdk/z;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/sdk/n;->g:Ljava/lang/String;

    .line 108
    :try_start_0
    sget-object v0, Lcom/vungle/sdk/IVungleConstants;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "before encoding: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/vungle/sdk/n;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    sget-object v0, Lcom/vungle/sdk/n;->g:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/sdk/n;->g:Ljava/lang/String;

    .line 110
    sget-object v0, Lcom/vungle/sdk/IVungleConstants;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "After encoding: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/vungle/sdk/n;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->b:Ljava/lang/String;

    const-string v2, "UnsupportedEncodingException"

    invoke-static {v1, v2, v0}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/vungle/sdk/z;->j:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/vungle/sdk/z;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/sdk/VungleUtil;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/vungle/sdk/z;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/sdk/z;->j:Ljava/lang/String;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/vungle/sdk/z;->j:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/sdk/n;->d:Ljava/lang/String;

    .line 144
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/vungle/sdk/z;->i:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/vungle/sdk/z;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/sdk/VungleUtil;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/vungle/sdk/z;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/sdk/z;->i:Ljava/lang/String;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/vungle/sdk/z;->i:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/sdk/n;->e:Ljava/lang/String;

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_0
    sget-object v0, Lcom/vungle/sdk/IVungleConstants;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/vungle/sdk/z;->i:Ljava/lang/String;

    .line 158
    sget-object v0, Lcom/vungle/sdk/IVungleConstants;->i:Ljava/lang/String;

    sput-object v0, Lcom/vungle/sdk/n;->e:Ljava/lang/String;

    goto :goto_0
.end method
