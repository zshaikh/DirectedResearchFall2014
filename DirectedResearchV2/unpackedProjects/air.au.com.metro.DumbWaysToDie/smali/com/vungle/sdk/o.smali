.class final Lcom/vungle/sdk/o;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/sdk/o$a;,
        Lcom/vungle/sdk/o$b;
    }
.end annotation


# static fields
.field public static final a:[I


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/vungle/sdk/o$a;

.field private h:Ljava/lang/String;

.field private i:Lcom/vungle/sdk/o$b;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vungle/sdk/o;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xa
        0x1e
        0x1e
        0x3c
        0x3c
        0x78
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/sdk/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v2, p0, Lcom/vungle/sdk/o;->b:I

    .line 56
    iput v2, p0, Lcom/vungle/sdk/o;->c:I

    .line 57
    sget-object v0, Lcom/vungle/sdk/o;->a:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/vungle/sdk/o;->d:I

    .line 63
    iput-object v1, p0, Lcom/vungle/sdk/o;->e:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/vungle/sdk/o;->f:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/vungle/sdk/o;->g:Lcom/vungle/sdk/o$a;

    .line 66
    iput-object v1, p0, Lcom/vungle/sdk/o;->h:Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lcom/vungle/sdk/o;->i:Lcom/vungle/sdk/o$b;

    .line 87
    iput-object v1, p0, Lcom/vungle/sdk/o;->j:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/vungle/sdk/o;->e:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/vungle/sdk/o;->f:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/vungle/sdk/o;->h:Ljava/lang/String;

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/vungle/sdk/o;Lcom/vungle/sdk/o$a;)Lcom/vungle/sdk/o$a;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/vungle/sdk/o;->g:Lcom/vungle/sdk/o$a;

    return-object p1
.end method

.method static synthetic a(Lcom/vungle/sdk/o;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vungle/sdk/o;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/vungle/sdk/o;)Lcom/vungle/sdk/o$b;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vungle/sdk/o;->i:Lcom/vungle/sdk/o$b;

    return-object v0
.end method

.method static synthetic c(Lcom/vungle/sdk/o;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 20
    sget-object v0, Lcom/vungle/sdk/o;->a:[I

    iget v1, p0, Lcom/vungle/sdk/o;->c:I

    sget-object v2, Lcom/vungle/sdk/o;->a:[I

    array-length v2, v2

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Lcom/vungle/sdk/o;->d:I

    iget v0, p0, Lcom/vungle/sdk/o;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vungle/sdk/o;->c:I

    const/16 v1, 0x21

    if-gt v0, v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/vungle/sdk/o;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/vungle/sdk/o;->d:I

    return v0
.end method

.method static synthetic e(Lcom/vungle/sdk/o;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vungle/sdk/o;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/vungle/sdk/o;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vungle/sdk/o;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/vungle/sdk/o;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vungle/sdk/o;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/vungle/sdk/o;)Lcom/vungle/sdk/o$a;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vungle/sdk/o;->g:Lcom/vungle/sdk/o$a;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 94
    new-instance v0, Lcom/vungle/sdk/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vungle/sdk/o$a;-><init>(Lcom/vungle/sdk/o;B)V

    iput-object v0, p0, Lcom/vungle/sdk/o;->g:Lcom/vungle/sdk/o$a;

    .line 95
    iget-object v0, p0, Lcom/vungle/sdk/o;->g:Lcom/vungle/sdk/o$a;

    iget-object v1, p0, Lcom/vungle/sdk/o;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/sdk/o;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/sdk/o;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/vungle/sdk/o$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public final a(Lcom/vungle/sdk/o$b;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/vungle/sdk/o;->i:Lcom/vungle/sdk/o$b;

    .line 83
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/vungle/sdk/o;->j:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public final b()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 270
    iget v0, p0, Lcom/vungle/sdk/o;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vungle/sdk/o;->b:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    move v0, v4

    :goto_0
    if-nez v0, :cond_1

    move v0, v2

    .line 278
    :goto_1
    return v0

    :cond_0
    move v0, v2

    .line 270
    goto :goto_0

    .line 274
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Downloading file ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vungle/sdk/o;->g:Lcom/vungle/sdk/o$a;

    iget-object v1, v1, Lcom/vungle/sdk/o$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") again... Retry #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vungle/sdk/o;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 276
    new-instance v0, Lcom/vungle/sdk/o$a;

    invoke-direct {v0, p0, v2}, Lcom/vungle/sdk/o$a;-><init>(Lcom/vungle/sdk/o;B)V

    iput-object v0, p0, Lcom/vungle/sdk/o;->g:Lcom/vungle/sdk/o$a;

    .line 277
    iget-object v0, p0, Lcom/vungle/sdk/o;->g:Lcom/vungle/sdk/o$a;

    iget-object v1, p0, Lcom/vungle/sdk/o;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/sdk/o;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/sdk/o;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/vungle/sdk/o$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 278
    goto :goto_1
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/vungle/sdk/o;->g:Lcom/vungle/sdk/o$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/sdk/o;->g:Lcom/vungle/sdk/o$a;

    invoke-virtual {v0}, Lcom/vungle/sdk/o$a;->a()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 292
    iget-object v0, p0, Lcom/vungle/sdk/o;->g:Lcom/vungle/sdk/o$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vungle/sdk/o;->g:Lcom/vungle/sdk/o$a;

    invoke-virtual {v0}, Lcom/vungle/sdk/o$a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/vungle/sdk/o$a;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method
