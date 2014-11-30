.class Lcom/android/a/k;
.super Lcom/android/a/s;
.source "EventRecurrence.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 888
    invoke-direct {p0}, Lcom/android/a/s;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/a/c;)V
    .locals 0

    .prologue
    .line 888
    invoke-direct {p0}, Lcom/android/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/android/a/b;)I
    .locals 3

    .prologue
    .line 890
    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/android/a/k;->b(Ljava/lang/String;IIZ)[I

    move-result-object v0

    .line 891
    iput-object v0, p2, Lcom/android/a/b;->x:[I

    .line 892
    array-length v0, v0

    iput v0, p2, Lcom/android/a/b;->y:I

    .line 893
    const/16 v0, 0x1000

    return v0
.end method
