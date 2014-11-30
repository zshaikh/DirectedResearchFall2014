.class Lcom/android/a/i;
.super Lcom/android/a/s;
.source "EventRecurrence.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 852
    invoke-direct {p0}, Lcom/android/a/s;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/a/c;)V
    .locals 0

    .prologue
    .line 852
    invoke-direct {p0}, Lcom/android/a/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/android/a/b;)I
    .locals 3

    .prologue
    .line 854
    const/16 v0, -0x1f

    const/16 v1, 0x1f

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/android/a/i;->b(Ljava/lang/String;IIZ)[I

    move-result-object v0

    .line 855
    iput-object v0, p2, Lcom/android/a/b;->p:[I

    .line 856
    array-length v0, v0

    iput v0, p2, Lcom/android/a/b;->q:I

    .line 857
    const/16 v0, 0x100

    return v0
.end method
