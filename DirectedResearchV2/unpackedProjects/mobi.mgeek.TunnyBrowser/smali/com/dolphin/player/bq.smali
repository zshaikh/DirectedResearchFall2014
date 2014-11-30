.class public Lcom/dolphin/player/bq;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lcom/dolphin/player/aj;

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/player/bq;->e:Lcom/dolphin/player/aj;

    .line 238
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/player/bq;->f:I

    .line 239
    iput-boolean v1, p0, Lcom/dolphin/player/bq;->g:Z

    .line 240
    iput-boolean v1, p0, Lcom/dolphin/player/bq;->h:Z

    .line 241
    iput-boolean v1, p0, Lcom/dolphin/player/bq;->i:Z

    .line 242
    return-void
.end method
