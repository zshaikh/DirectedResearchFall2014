.class final Lcom/dolphin/browser/provider/v;
.super Ljava/lang/Object;
.source "MostVisitedHistoryItem.java"


# instance fields
.field private a:J
    .annotation runtime Lcom/dolphin/browser/provider/ArrayCursor$Column;
        a = 0x0
        b = "_id"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/dolphin/browser/provider/ArrayCursor$Column;
        a = 0x1
        b = "title"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/dolphin/browser/provider/ArrayCursor$Column;
        a = 0x2
        b = "url"
    .end annotation
.end field

.field private d:J
    .annotation runtime Lcom/dolphin/browser/provider/ArrayCursor$Column;
        a = 0x3
        b = "last_visit"
    .end annotation
.end field

.field private e:[B
    .annotation runtime Lcom/dolphin/browser/provider/ArrayCursor$Column;
        a = 0x4
        b = "favicon"
    .end annotation
.end field

.field private f:[B
    .annotation runtime Lcom/dolphin/browser/provider/ArrayCursor$Column;
        a = 0x5
        b = "touch_icon"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dolphin/browser/provider/v;->b:Ljava/lang/String;

    return-object v0
.end method

.method a(J)V
    .locals 0

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/dolphin/browser/provider/v;->a:J

    .line 36
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/dolphin/browser/provider/v;->c:Ljava/lang/String;

    .line 44
    return-void
.end method

.method a([B)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/dolphin/browser/provider/v;->e:[B

    .line 86
    return-void
.end method

.method b(J)V
    .locals 0

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/dolphin/browser/provider/v;->d:J

    .line 60
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/dolphin/browser/provider/v;->b:Ljava/lang/String;

    .line 52
    return-void
.end method

.method b([B)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/dolphin/browser/provider/v;->f:[B

    .line 90
    return-void
.end method
