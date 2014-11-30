.class final Lcom/dolphin/browser/provider/s;
.super Ljava/lang/Object;
.source "GestureRecognitionItem.java"


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
        b = "name"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/dolphin/browser/provider/ArrayCursor$Column;
        a = 0x2
        b = "display_name"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/dolphin/browser/provider/ArrayCursor$Column;
        a = 0x3
        b = "method_name"
    .end annotation
.end field

.field private e:Ljava/lang/Object;
    .annotation runtime Lcom/dolphin/browser/provider/ArrayCursor$Column;
        a = 0x4
        b = "user_data"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(J)V
    .locals 0

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/dolphin/browser/provider/s;->a:J

    .line 42
    return-void
.end method

.method a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/dolphin/browser/provider/s;->e:Ljava/lang/Object;

    .line 58
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/dolphin/browser/provider/s;->b:Ljava/lang/String;

    .line 26
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/dolphin/browser/provider/s;->c:Ljava/lang/String;

    .line 34
    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/dolphin/browser/provider/s;->d:Ljava/lang/String;

    .line 54
    return-void
.end method
