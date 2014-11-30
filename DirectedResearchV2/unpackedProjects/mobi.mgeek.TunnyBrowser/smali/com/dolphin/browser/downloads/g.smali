.class Lcom/dolphin/browser/downloads/g;
.super Ljava/lang/Object;
.source "DownloadNotification.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:I

.field g:J

.field h:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Lcom/dolphin/browser/downloads/g;->b:I

    .line 49
    iput v0, p0, Lcom/dolphin/browser/downloads/g;->c:I

    .line 52
    iput v0, p0, Lcom/dolphin/browser/downloads/g;->f:I

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dolphin/browser/downloads/g;->g:J

    return-void
.end method
