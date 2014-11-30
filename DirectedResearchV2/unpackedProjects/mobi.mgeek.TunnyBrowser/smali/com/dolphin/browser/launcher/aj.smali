.class public Lcom/dolphin/browser/launcher/aj;
.super Ljava/lang/Object;
.source "DropTarget.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:Lcom/dolphin/browser/launcher/ag;

.field public g:Ljava/lang/Object;

.field public h:Lcom/dolphin/browser/launcher/af;

.field public i:Ljava/lang/Runnable;

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/dolphin/browser/launcher/aj;->a:I

    .line 31
    iput v0, p0, Lcom/dolphin/browser/launcher/aj;->b:I

    .line 34
    iput v0, p0, Lcom/dolphin/browser/launcher/aj;->c:I

    .line 37
    iput v0, p0, Lcom/dolphin/browser/launcher/aj;->d:I

    .line 43
    iput-boolean v2, p0, Lcom/dolphin/browser/launcher/aj;->e:Z

    .line 46
    iput-object v1, p0, Lcom/dolphin/browser/launcher/aj;->f:Lcom/dolphin/browser/launcher/ag;

    .line 49
    iput-object v1, p0, Lcom/dolphin/browser/launcher/aj;->g:Ljava/lang/Object;

    .line 52
    iput-object v1, p0, Lcom/dolphin/browser/launcher/aj;->h:Lcom/dolphin/browser/launcher/af;

    .line 55
    iput-object v1, p0, Lcom/dolphin/browser/launcher/aj;->i:Ljava/lang/Runnable;

    .line 58
    iput-boolean v2, p0, Lcom/dolphin/browser/launcher/aj;->j:Z

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/launcher/aj;->k:Z

    .line 64
    return-void
.end method


# virtual methods
.method public a([I)[I
    .locals 4

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    const/4 v0, 0x2

    new-array p1, v0, [I

    .line 82
    :cond_0
    iget v0, p0, Lcom/dolphin/browser/launcher/aj;->a:I

    iget v1, p0, Lcom/dolphin/browser/launcher/aj;->c:I

    sub-int/2addr v0, v1

    .line 83
    iget v1, p0, Lcom/dolphin/browser/launcher/aj;->b:I

    iget v2, p0, Lcom/dolphin/browser/launcher/aj;->d:I

    sub-int/2addr v1, v2

    .line 86
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dolphin/browser/launcher/aj;->f:Lcom/dolphin/browser/launcher/ag;

    invoke-virtual {v3}, Lcom/dolphin/browser/launcher/ag;->a()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    aput v0, p1, v2

    .line 87
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/dolphin/browser/launcher/aj;->f:Lcom/dolphin/browser/launcher/ag;

    invoke-virtual {v2}, Lcom/dolphin/browser/launcher/ag;->a()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 89
    return-object p1
.end method
