.class public final Lcom/vungle/sdk/aj;
.super Ljava/lang/Object;
.source "vungle"


# static fields
.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vungle/sdk/aj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/vungle/sdk/aj;->a:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/sdk/aj;-><init>(ILjava/lang/String;)V

    .line 81
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput p1, p0, Lcom/vungle/sdk/aj;->b:I

    .line 85
    iput-object p2, p0, Lcom/vungle/sdk/aj;->c:Ljava/lang/String;

    .line 86
    return-void
.end method

.method static a(I)Lcom/vungle/sdk/aj;
    .locals 1
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vungle/sdk/aj;->a(ILjava/lang/String;)Lcom/vungle/sdk/aj;

    move-result-object v0

    return-object v0
.end method

.method static a(ILjava/lang/String;)Lcom/vungle/sdk/aj;
    .locals 4
    .parameter
    .parameter

    .prologue
    const-string v3, ")"

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_0

    div-int/lit8 v0, p0, 0x64

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    .line 48
    sget-object v0, Lcom/vungle/sdk/aj;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/sdk/aj;

    .line 49
    if-nez v0, :cond_2

    .line 50
    new-instance v0, Lcom/vungle/sdk/aj;

    invoke-direct {v0, p0}, Lcom/vungle/sdk/aj;-><init>(I)V

    .line 51
    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Caching response ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    sget-object v1, Lcom/vungle/sdk/aj;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    :goto_1
    return-object v0

    .line 47
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 55
    :cond_2
    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Returning cached response ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 59
    :cond_3
    new-instance v0, Lcom/vungle/sdk/aj;

    invoke-direct {v0, p0, p1}, Lcom/vungle/sdk/aj;-><init>(ILjava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/vungle/sdk/aj;->b:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vungle/sdk/aj;->c:Ljava/lang/String;

    return-object v0
.end method
