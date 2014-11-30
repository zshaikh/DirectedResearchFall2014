.class public Lcom/dolphin/browser/util/cg;
.super Ljava/lang/Object;
.source "SensitiveDataCryptoHelper.java"


# static fields
.field private static a:[I


# instance fields
.field private b:Lcom/dolphin/browser/e/b/a;

.field private c:Lcom/dolphin/browser/e/b/c;

.field private d:Lcom/dolphin/browser/e/a/d;

.field private e:Lcom/dolphin/browser/e/a/g;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dolphin/browser/util/cg;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x80
        0xc0
        0x100
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/dolphin/browser/e/b/c;

    invoke-direct {v0, p1, p2, p3}, Lcom/dolphin/browser/e/b/c;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/dolphin/browser/util/cg;->c:Lcom/dolphin/browser/e/b/c;

    .line 46
    invoke-direct {p0}, Lcom/dolphin/browser/util/cg;->a()V

    .line 47
    return-void
.end method

.method private static a(I)I
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/dolphin/browser/util/cg;->a:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lcom/dolphin/browser/e/a/g;

    iget-object v1, p0, Lcom/dolphin/browser/util/cg;->c:Lcom/dolphin/browser/e/b/c;

    invoke-direct {v0, v1}, Lcom/dolphin/browser/e/a/g;-><init>(Lcom/dolphin/browser/e/b/b;)V

    iput-object v0, p0, Lcom/dolphin/browser/util/cg;->e:Lcom/dolphin/browser/e/a/g;

    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/util/cg;->e:Lcom/dolphin/browser/e/a/g;

    invoke-virtual {v0}, Lcom/dolphin/browser/e/a/g;->d()I

    move-result v0

    .line 62
    invoke-static {v0}, Lcom/dolphin/browser/util/cg;->a(I)I

    move-result v0

    .line 63
    new-instance v1, Lcom/dolphin/browser/e/b/a;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/e/b/a;-><init>(I)V

    iput-object v1, p0, Lcom/dolphin/browser/util/cg;->b:Lcom/dolphin/browser/e/b/a;

    .line 64
    iput v0, p0, Lcom/dolphin/browser/util/cg;->f:I

    .line 65
    invoke-direct {p0, v0}, Lcom/dolphin/browser/util/cg;->b(I)V

    .line 66
    new-instance v0, Lcom/dolphin/browser/e/a/d;

    iget-object v1, p0, Lcom/dolphin/browser/util/cg;->c:Lcom/dolphin/browser/e/b/c;

    iget-object v2, p0, Lcom/dolphin/browser/util/cg;->b:Lcom/dolphin/browser/e/b/a;

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/e/a/d;-><init>(Lcom/dolphin/browser/e/b/c;Lcom/dolphin/browser/e/b/a;)V

    iput-object v0, p0, Lcom/dolphin/browser/util/cg;->d:Lcom/dolphin/browser/e/a/d;

    .line 67
    return-void
.end method

.method private b(I)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/browser/util/cg;->b:Lcom/dolphin/browser/e/b/a;

    div-int/lit8 v1, p1, 0x8

    invoke-static {v1}, Lcom/dolphin/browser/e/c;->a(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/e/b/a;->a([B)V

    .line 71
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    const-string v0, "text"

    invoke-static {p1, v0}, Lcom/dolphin/browser/e/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 114
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/dolphin/browser/util/cg;->a([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 117
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a([BII)Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    const-string v0, "RSA-AES"

    invoke-static {v0}, Lcom/dolphin/browser/util/cw;->b(Ljava/lang/String;)Lcom/dolphin/browser/util/cw;

    move-result-object v0

    .line 103
    iget v1, p0, Lcom/dolphin/browser/util/cg;->f:I

    invoke-direct {p0, v1}, Lcom/dolphin/browser/util/cg;->b(I)V

    .line 104
    iget-object v1, p0, Lcom/dolphin/browser/util/cg;->d:Lcom/dolphin/browser/e/a/d;

    invoke-virtual {v1, p1, p2, p3}, Lcom/dolphin/browser/e/a/d;->b([BII)[B

    move-result-object v1

    .line 105
    invoke-virtual {v0}, Lcom/dolphin/browser/util/cw;->a()J

    .line 106
    const/4 v0, 0x2

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/aa;->b([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
