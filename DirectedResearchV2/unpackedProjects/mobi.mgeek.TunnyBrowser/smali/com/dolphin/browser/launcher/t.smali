.class Lcom/dolphin/browser/launcher/t;
.super Ljava/lang/Object;
.source "DataManager.java"


# instance fields
.field a:J

.field b:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/dolphin/browser/launcher/bi;)Lcom/dolphin/browser/launcher/t;
    .locals 3

    .prologue
    .line 77
    new-instance v0, Lcom/dolphin/browser/launcher/t;

    invoke-direct {v0}, Lcom/dolphin/browser/launcher/t;-><init>()V

    .line 78
    iget-wide v1, p0, Lcom/dolphin/browser/launcher/bi;->f:J

    iput-wide v1, v0, Lcom/dolphin/browser/launcher/t;->a:J

    .line 79
    iget v1, p0, Lcom/dolphin/browser/launcher/bi;->j:I

    iput v1, v0, Lcom/dolphin/browser/launcher/t;->b:I

    .line 80
    return-object v0
.end method


# virtual methods
.method b(Lcom/dolphin/browser/launcher/bi;)Z
    .locals 4

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/dolphin/browser/launcher/t;->a:J

    iget-wide v2, p1, Lcom/dolphin/browser/launcher/bi;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/dolphin/browser/launcher/t;->b:I

    iget v1, p1, Lcom/dolphin/browser/launcher/bi;->j:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Lcom/dolphin/browser/launcher/bi;)V
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p1, Lcom/dolphin/browser/launcher/bi;->f:J

    iput-wide v0, p0, Lcom/dolphin/browser/launcher/t;->a:J

    .line 90
    iget v0, p1, Lcom/dolphin/browser/launcher/bi;->j:I

    iput v0, p0, Lcom/dolphin/browser/launcher/t;->b:I

    .line 91
    return-void
.end method
