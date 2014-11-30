.class public abstract Lcom/dolphin/browser/voice/command/a/h;
.super Ljava/lang/Object;
.source "IRecorderImpl.java"

# interfaces
.implements Lcom/dolphin/browser/voice/command/a/f;


# static fields
.field protected static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/widget/Toast;

.field protected b:I

.field protected c:Lcom/dolphin/browser/voice/command/a/g;

.field protected d:Landroid/content/Context;

.field private f:Lcom/dolphin/browser/voice/command/a/j;

.field private final g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/dolphin/browser/voice/command/a/h;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/dolphin/browser/voice/command/a/h;->b:I

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/voice/command/a/h;->c:Lcom/dolphin/browser/voice/command/a/g;

    .line 94
    new-instance v0, Lcom/dolphin/browser/voice/command/a/i;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/voice/command/a/i;-><init>(Lcom/dolphin/browser/voice/command/a/h;)V

    iput-object v0, p0, Lcom/dolphin/browser/voice/command/a/h;->g:Landroid/os/Handler;

    .line 67
    iput-object p1, p0, Lcom/dolphin/browser/voice/command/a/h;->d:Landroid/content/Context;

    .line 68
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/voice/command/a/h;->a:Landroid/widget/Toast;

    .line 69
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/voice/command/a/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to init "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(F)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/h;->f:Lcom/dolphin/browser/voice/command/a/j;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/h;->f:Lcom/dolphin/browser/voice/command/a/j;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/voice/command/a/j;->a(F)V

    .line 87
    :cond_0
    return-void
.end method

.method protected a(I)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/h;->g:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    return-void
.end method

.method protected a(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/voice/command/a/h;->a(I)V

    .line 130
    return-void
.end method

.method public a(Lcom/dolphin/browser/voice/command/a/g;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/dolphin/browser/voice/command/a/h;->c:Lcom/dolphin/browser/voice/command/a/g;

    .line 77
    return-void
.end method

.method public a(Lcom/dolphin/browser/voice/command/a/j;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/dolphin/browser/voice/command/a/h;->f:Lcom/dolphin/browser/voice/command/a/j;

    .line 81
    return-void
.end method

.method protected a(Lcom/dolphin/browser/voice/command/h;)V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/voice/command/a/h;->a(I)V

    .line 123
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/h;->c:Lcom/dolphin/browser/voice/command/a/g;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/h;->c:Lcom/dolphin/browser/voice/command/a/g;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/voice/command/a/g;->a(Lcom/dolphin/browser/voice/command/h;)V

    .line 126
    :cond_0
    return-void
.end method

.method protected abstract a(Landroid/content/Context;)Z
.end method

.method public b()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/voice/command/a/h;->a(I)V

    .line 138
    return-void
.end method

.method protected b(I)V
    .locals 1

    .prologue
    .line 133
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/dolphin/browser/voice/command/a/h;->a(ILjava/lang/String;)V

    .line 134
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 113
    iget v1, p0, Lcom/dolphin/browser/voice/command/a/h;->b:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected f()F
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 28
    const/4 v0, 0x0

    .line 30
    sget-object v1, Lcom/dolphin/browser/voice/command/a/h;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    move v3, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v5, v5, v2

    if-lez v5, :cond_2

    .line 32
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v1

    .line 33
    add-int/lit8 v1, v3, 0x1

    :goto_1
    move v3, v1

    move v1, v0

    goto :goto_0

    .line 36
    :cond_0
    if-lez v3, :cond_1

    int-to-float v0, v3

    div-float v2, v1, v0

    :cond_1
    return v2

    :cond_2
    move v0, v1

    move v1, v3

    goto :goto_1
.end method
