.class Lcom/android/a/g;
.super Lcom/android/a/s;
.source "EventRecurrence.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 783
    invoke-direct {p0}, Lcom/android/a/s;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/a/c;)V
    .locals 0

    .prologue
    .line 783
    invoke-direct {p0}, Lcom/android/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/android/a/b;)I
    .locals 3

    .prologue
    .line 785
    const/4 v0, 0x0

    const/16 v1, 0x3b

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/android/a/g;->b(Ljava/lang/String;IIZ)[I

    move-result-object v0

    .line 786
    iput-object v0, p2, Lcom/android/a/b;->i:[I

    .line 787
    array-length v0, v0

    iput v0, p2, Lcom/android/a/b;->j:I

    .line 788
    const/16 v0, 0x20

    return v0
.end method
